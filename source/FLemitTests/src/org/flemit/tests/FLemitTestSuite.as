package org.flemit.tests
{
	import org.flemit.tests.bugs.*;
	import org.flemit.tests.bytecode.*;
	
	[Suite]
	[RunWith("org.flexunit.runners.Suite")]
	public class FLemitTestSuite
	{
		public var swfOutput : SWFOutputFixture; 
		public var swfReader : SWFReaderFixture;
		public var byteCodeWriter : ByteCodeWriterFixture;
		
		public var bug2956625 : Bug2956625Fixture;
	}
}