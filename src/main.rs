use std::env;

fn main()
{
    let args: Vec<String> = env::args().collect();
    let text = &args[1];
    println!("\n               < {} >\n               /\n___________   /\n( >        ) /\n(  ______  )\n(__________)\n
             ", text);
}
