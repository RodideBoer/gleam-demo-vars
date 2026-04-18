import argv
import demo_vars/internal
import envoy
import gleam/io
import gleam/result

pub fn main() -> Nil {
  case argv.load().arguments {
    ["get", name] -> get(name)
    _ -> io.println("Usage: vars get <name>")
  }
}

fn get(name: String) -> Nil {
  let value =
    envoy.get(name)
    |> result.unwrap("")
  io.println(internal.format_pair(name, value))
}
