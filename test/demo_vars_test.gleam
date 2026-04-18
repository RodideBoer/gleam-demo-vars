import demo_vars/internal
import gleeunit

pub fn main() -> Nil {
  gleeunit.main()
}

// gleeunit test functions end in `_test`
pub fn format_pair_test() {
  let greeting = internal.format_pair("hello", "world")
  assert greeting == "hello=world"
}
