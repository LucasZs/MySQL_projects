
use Official_Star_Wars_Movies;

insert into Releases values ("A New Hope", "1977");
insert into Releases values ("The Empire Strickes Back", "1980");
insert into Releases values ("Return of the Jedi", "1983");
insert into Releases values ("The Phantom Menace", "1999");
insert into Releases values ("Attack of the Clones", "2002");
insert into Releases values ("Revenge of the Sith", "2005");
insert into Releases values ("The Force Awakens", "2015");

insert into Director values ("GL", "George Lucas");
insert into Director values ("IK", "Irvin Kershner");
insert into Director values ("RM", "Richard Marquand");
insert into Director values ("JJA", "J.J. Abrams");

insert into Stars values ("team A", "Mark Hamill, Harrison Ford, Carrie Fisher, Alec Guinness");
insert into Stars values ("team B", "Jake Lloyd, Ewan McGregor, Natalie Portman, Liam Neeson");
insert into Stars values ("team C", "Hayden Christensen, Ewan McGregor, Natalie Portman, Christopther Lee");
insert into Stars values ("team D", "Mark Hamill, Harrison Ford, Carrie Fisher, Daisy Ridley");

insert into EpisodeGuide values ("I.", "The Phantom Menace", "GL", "team B");
insert into EpisodeGuide values ("II.", "Attack of the Clones", "GL", "team C");
insert into EpisodeGuide values ("III.", "Revenge of the Sith", "GL", "team C");
insert into EpisodeGuide values ("IV.", "A New Hope", "GL", "team A");
insert into EpisodeGuide values ("V.", "The Empire Strickes Back", "IK", "team A");
insert into EpisodeGuide values ("VI.", "Return of the Jedi", "RM", "team A");
insert into EpisodeGuide values ("VII.", "The Force Awakens", "JJA", "team D");
