@rest
Feature: Create URI

	Scenario Outline: Create and get URIs
		Given <type> is <descriptor>
		When I post the parameters to the compound webservice
		Then I should receive a valid URI
		And the URI should contain <inchi>
		And the URI response should be <cansmi>

	Examples:
		|descriptor                        |type  |inchi                                                         |cansmi                     |
		|CC(=O)CC(C)C#N                    |smiles|InChI=1S/C6H9NO/c1-5(4-7)3-6(2)8/h5H,3H2,1-2H3                |CC(CC(=O)C)C#N             |
		|Benzene                           |name  |InChI=1S/C6H6/c1-2-4-6-5-3-1/h1-6H                            |c1ccccc1                   |
		|F[B-](F)(F)F.[Na+]                |smiles|InChI=1S/BF4.Na/c2-1(3,4)5;/q-1;+1                            |[Na+].F[B-](F)(F)F         |
		|N#[N+]C1=CC=CC=C1.F[B-](F)(F)F    |smiles|InChI=1S/C6H5N2.BF4/c7-8-6-4-2-1-3-5-6;2-1(3,4)5/h1-5H;/q+1;-1|N#[N+]c1ccccc1.F[B-](F)(F)F|
		|InChI=1S/C6H6/c1-2-4-6-5-3-1/h1-6H|inchi |InChI=1S/C6H6/c1-2-4-6-5-3-1/h1-6H                            |c1ccccc1                   |
