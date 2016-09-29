<?xml version="1.0" encoding="utf-8"?>
<wsdl:definitions xmlns:s="http://www.w3.org/2001/XMLSchema" xmlns:soap12="http://schemas.xmlsoap.org/wsdl/soap12/" xmlns:http="http://schemas.xmlsoap.org/wsdl/http/" xmlns:mime="http://schemas.xmlsoap.org/wsdl/mime/" xmlns:tns="http://ws.eoddata.com/Data" xmlns:soap="http://schemas.xmlsoap.org/wsdl/soap/" xmlns:tm="http://microsoft.com/wsdl/mime/textMatching/" xmlns:soapenc="http://schemas.xmlsoap.org/soap/encoding/" targetNamespace="http://ws.eoddata.com/Data" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">
  <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">EODData Financial Information Web Service</wsdl:documentation>
  <wsdl:types>
    <s:schema elementFormDefault="qualified" targetNamespace="http://ws.eoddata.com/Data">
      <s:element name="Login">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="Username" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="Password" type="s:string" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="LoginResponse">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="LoginResult" type="tns:LOGINRESPONSE" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:complexType name="LOGINRESPONSE">
        <s:attribute name="Message" type="s:string" />
        <s:attribute name="Token" type="s:string" />
        <s:attribute name="DataFormat" type="s:string" />
        <s:attribute name="Header" type="s:boolean" use="required" />
        <s:attribute name="Suffix" type="s:boolean" use="required" />
      </s:complexType>
      <s:element name="Login2">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="Username" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="Password" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="Version" type="s:string" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="Login2Response">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="Login2Result" type="tns:LOGINRESPONSE" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="Membership">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="Token" type="s:string" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="MembershipResponse">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="MembershipResult" type="tns:RESPONSE" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:complexType name="RESPONSE">
        <s:sequence>
          <s:element minOccurs="0" maxOccurs="1" name="EXCHANGE" type="tns:EXCHANGE" />
          <s:element minOccurs="0" maxOccurs="1" name="EXCHANGES" type="tns:ArrayOfEXCHANGE" />
          <s:element minOccurs="0" maxOccurs="1" name="SYMBOL" type="tns:SYMBOL" />
          <s:element minOccurs="0" maxOccurs="1" name="SYMBOLS" type="tns:ArrayOfSYMBOL" />
          <s:element minOccurs="0" maxOccurs="1" name="SYMBOLS2" type="tns:ArrayOfSYMBOL2" />
          <s:element minOccurs="0" maxOccurs="1" name="QUOTE" type="tns:QUOTE" />
          <s:element minOccurs="0" maxOccurs="1" name="QUOTES" type="tns:ArrayOfQUOTE" />
          <s:element minOccurs="0" maxOccurs="1" name="QUOTES2" type="tns:ArrayOfQUOTE2" />
          <s:element minOccurs="0" maxOccurs="1" name="SPLITS" type="tns:ArrayOfSPLIT" />
          <s:element minOccurs="0" maxOccurs="1" name="COUNTRIES" type="tns:ArrayOfCountryBase" />
          <s:element minOccurs="0" maxOccurs="1" name="FUNDAMENTALS" type="tns:ArrayOfFUNDAMENTAL" />
          <s:element minOccurs="0" maxOccurs="1" name="TECHNICALS" type="tns:ArrayOfTECHNICAL" />
          <s:element minOccurs="0" maxOccurs="1" name="SYMBOLCHANGES" type="tns:ArrayOfSYMBOLCHANGE" />
          <s:element minOccurs="0" maxOccurs="1" name="NEWSLIST" type="tns:ArrayOfNEWS" />
          <s:element minOccurs="0" maxOccurs="1" name="CHART" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="MEMBERSHIP" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="VERSION" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="MONTHS" type="s:string" />
          <s:element minOccurs="0" maxOccurs="1" name="DATAFORMATS" type="tns:ArrayOfDATAFORMAT" />
        </s:sequence>
        <s:attribute name="Source" type="s:string" />
        <s:attribute name="Message" type="s:string" />
        <s:attribute name="Date" type="s:dateTime" use="required" />
      </s:complexType>
      <s:complexType name="EXCHANGE">
        <s:attribute name="Code" type="s:string" />
        <s:attribute name="Name" type="s:string" />
        <s:attribute name="LastTradeDateTime" type="s:dateTime" use="required" />
        <s:attribute name="Country" type="s:string" />
        <s:attribute name="Currency" type="s:string" />
        <s:attribute name="Advances" type="s:int" use="required" />
        <s:attribute name="Declines" type="s:int" use="required" />
        <s:attribute name="Suffix" type="s:string" />
        <s:attribute name="TimeZone" type="s:string" />
        <s:attribute name="IsIntraday" type="s:boolean" use="required" />
        <s:attribute name="IntradayStartDate" type="s:dateTime" use="required" />
        <s:attribute name="HasIntradayProduct" type="s:boolean" use="required" />
      </s:complexType>
      <s:complexType name="ArrayOfEXCHANGE">
        <s:sequence>
          <s:element minOccurs="0" maxOccurs="unbounded" name="EXCHANGE" nillable="true" type="tns:EXCHANGE" />
        </s:sequence>
      </s:complexType>
      <s:complexType name="SYMBOL">
        <s:attribute name="Code" type="s:string" />
        <s:attribute name="Name" type="s:string" />
        <s:attribute name="LongName" type="s:string" />
        <s:attribute name="DateTime" type="s:dateTime" use="required" />
      </s:complexType>
      <s:complexType name="ArrayOfSYMBOL">
        <s:sequence>
          <s:element minOccurs="0" maxOccurs="unbounded" name="SYMBOL" nillable="true" type="tns:SYMBOL" />
        </s:sequence>
      </s:complexType>
      <s:complexType name="ArrayOfSYMBOL2">
        <s:sequence>
          <s:element minOccurs="0" maxOccurs="unbounded" name="SYMBOL2" nillable="true" type="tns:SYMBOL2" />
        </s:sequence>
      </s:complexType>
      <s:complexType name="SYMBOL2">
        <s:attribute name="c" type="s:string" />
        <s:attribute name="n" type="s:string" />
      </s:complexType>
      <s:complexType name="QUOTE">
        <s:attribute name="Symbol" type="s:string" />
        <s:attribute name="Description" type="s:string" />
        <s:attribute name="Name" type="s:string" />
        <s:attribute name="DateTime" type="s:dateTime" use="required" />
        <s:attribute name="Open" type="s:double" use="required" />
        <s:attribute name="High" type="s:double" use="required" />
        <s:attribute name="Low" type="s:double" use="required" />
        <s:attribute name="Close" type="s:double" use="required" />
        <s:attribute name="Volume" type="s:long" use="required" />
        <s:attribute name="OpenInterest" type="s:long" use="required" />
        <s:attribute name="Previous" type="s:double" use="required" />
        <s:attribute name="Change" type="s:double" use="required" />
        <s:attribute name="Bid" type="s:double" use="required" />
        <s:attribute name="Ask" type="s:double" use="required" />
        <s:attribute name="PreviousClose" type="s:double" use="required" />
        <s:attribute name="NextOpen" type="s:double" use="required" />
        <s:attribute name="Modified" type="s:dateTime" use="required" />
      </s:complexType>
      <s:complexType name="ArrayOfQUOTE">
        <s:sequence>
          <s:element minOccurs="0" maxOccurs="unbounded" name="QUOTE" nillable="true" type="tns:QUOTE" />
        </s:sequence>
      </s:complexType>
      <s:complexType name="ArrayOfQUOTE2">
        <s:sequence>
          <s:element minOccurs="0" maxOccurs="unbounded" name="QUOTE2" nillable="true" type="tns:QUOTE2" />
        </s:sequence>
      </s:complexType>
      <s:complexType name="QUOTE2">
        <s:attribute name="s" type="s:string" />
        <s:attribute name="d" type="s:dateTime" use="required" />
        <s:attribute name="o" type="s:double" use="required" />
        <s:attribute name="h" type="s:double" use="required" />
        <s:attribute name="l" type="s:double" use="required" />
        <s:attribute name="c" type="s:double" use="required" />
        <s:attribute name="v" type="s:long" use="required" />
        <s:attribute name="i" type="s:long" use="required" />
        <s:attribute name="b" type="s:double" use="required" />
        <s:attribute name="a" type="s:double" use="required" />
      </s:complexType>
      <s:complexType name="ArrayOfSPLIT">
        <s:sequence>
          <s:element minOccurs="0" maxOccurs="unbounded" name="SPLIT" nillable="true" type="tns:SPLIT" />
        </s:sequence>
      </s:complexType>
      <s:complexType name="SPLIT">
        <s:attribute name="Exchange" type="s:string" />
        <s:attribute name="Symbol" type="s:string" />
        <s:attribute name="DateTime" type="s:dateTime" use="required" />
        <s:attribute name="Ratio" type="s:string" />
      </s:complexType>
      <s:complexType name="ArrayOfCountryBase">
        <s:sequence>
          <s:element minOccurs="0" maxOccurs="unbounded" name="CountryBase" nillable="true" type="tns:CountryBase" />
        </s:sequence>
      </s:complexType>
      <s:complexType name="CountryBase">
        <s:attribute name="Code" type="s:string" />
        <s:attribute name="Name" type="s:string" />
      </s:complexType>
      <s:complexType name="ArrayOfFUNDAMENTAL">
        <s:sequence>
          <s:element minOccurs="0" maxOccurs="unbounded" name="FUNDAMENTAL" nillable="true" type="tns:FUNDAMENTAL" />
        </s:sequence>
      </s:complexType>
      <s:complexType name="FUNDAMENTAL">
        <s:attribute name="Symbol" type="s:string" />
        <s:attribute name="Name" type="s:string" />
        <s:attribute name="Description" type="s:string" />
        <s:attribute name="DateTime" type="s:dateTime" use="required" />
        <s:attribute name="Industry" type="s:string" />
        <s:attribute name="Sector" type="s:string" />
        <s:attribute name="Shares" type="s:long" use="required" />
        <s:attribute name="MarketCap" type="s:long" use="required" />
        <s:attribute name="PE" type="s:double" use="required" />
        <s:attribute name="EPS" type="s:double" use="required" />
        <s:attribute name="NTA" type="s:double" use="required" />
        <s:attribute name="DivYield" type="s:double" use="required" />
        <s:attribute name="Dividend" type="s:double" use="required" />
        <s:attribute name="DividendDate" type="s:dateTime" use="required" />
        <s:attribute name="DPS" type="s:double" use="required" />
        <s:attribute name="ImputationCredits" type="s:double" use="required" />
        <s:attribute name="EBITDA" type="s:double" use="required" />
        <s:attribute name="PEG" type="s:double" use="required" />
        <s:attribute name="PtS" type="s:double" use="required" />
        <s:attribute name="PtB" type="s:double" use="required" />
        <s:attribute name="Yield" type="s:double" use="required" />
      </s:complexType>
      <s:complexType name="ArrayOfTECHNICAL">
        <s:sequence>
          <s:element minOccurs="0" maxOccurs="unbounded" name="TECHNICAL" nillable="true" type="tns:TECHNICAL" />
        </s:sequence>
      </s:complexType>
      <s:complexType name="TECHNICAL">
        <s:attribute name="Symbol" type="s:string" />
        <s:attribute name="Name" type="s:string" />
        <s:attribute name="Description" type="s:string" />
        <s:attribute name="DateTime" type="s:dateTime" use="required" />
        <s:attribute name="Previous" type="s:double" use="required" />
        <s:attribute name="Change" type="s:double" use="required" />
        <s:attribute name="MA1" type="s:int" use="required" />
        <s:attribute name="MA2" type="s:int" use="required" />
        <s:attribute name="MA5" type="s:int" use="required" />
        <s:attribute name="MA20" type="s:int" use="required" />
        <s:attribute name="MA50" type="s:int" use="required" />
        <s:attribute name="MA100" type="s:int" use="required" />
        <s:attribute name="MA200" type="s:int" use="required" />
        <s:attribute name="MAPercent" type="s:double" use="required" />
        <s:attribute name="MAReturn" type="s:double" use="required" />
        <s:attribute name="VolumeChange" type="s:long" use="required" />
        <s:attribute name="ThreeMonthChange" type="s:double" use="required" />
        <s:attribute name="SixMonthChange" type="s:double" use="required" />
        <s:attribute name="WeekHigh" type="s:double" use="required" />
        <s:attribute name="WeekLow" type="s:double" use="required" />
        <s:attribute name="WeekChange" type="s:double" use="required" />
        <s:attribute name="AvgWeekChange" type="s:double" use="required" />
        <s:attribute name="AvgWeekVolume" type="s:double" use="required" />
        <s:attribute name="WeekVolume" type="s:double" use="required" />
        <s:attribute name="MonthHigh" type="s:double" use="required" />
        <s:attribute name="MonthLow" type="s:double" use="required" />
        <s:attribute name="MonthChange" type="s:double" use="required" />
        <s:attribute name="AvgMonthChange" type="s:double" use="required" />
        <s:attribute name="AvgMonthVolume" type="s:double" use="required" />
        <s:attribute name="MonthVolume" type="s:double" use="required" />
        <s:attribute name="YearHigh" type="s:double" use="required" />
        <s:attribute name="YearLow" type="s:double" use="required" />
        <s:attribute name="YearChange" type="s:double" use="required" />
        <s:attribute name="AvgYearChange" type="s:double" use="required" />
        <s:attribute name="AvgYearVolume" type="s:double" use="required" />
        <s:attribute name="YTDChange" type="s:double" use="required" />
        <s:attribute name="RSI14" type="s:double" use="required" />
        <s:attribute name="STO9" type="s:double" use="required" />
        <s:attribute name="WPR14" type="s:double" use="required" />
        <s:attribute name="MTM14" type="s:double" use="required" />
        <s:attribute name="ROC14" type="s:double" use="required" />
        <s:attribute name="PTC" type="s:long" use="required" />
        <s:attribute name="SAR" type="s:double" use="required" />
        <s:attribute name="Volatility" type="s:double" use="required" />
        <s:attribute name="Liquidity" type="s:double" use="required" />
      </s:complexType>
      <s:complexType name="ArrayOfSYMBOLCHANGE">
        <s:sequence>
          <s:element minOccurs="0" maxOccurs="unbounded" name="SYMBOLCHANGE" nillable="true" type="tns:SYMBOLCHANGE" />
        </s:sequence>
      </s:complexType>
      <s:complexType name="SYMBOLCHANGE">
        <s:attribute name="DateTime" type="s:dateTime" use="required" />
        <s:attribute name="OldSymbol" type="s:string" />
        <s:attribute name="NewSymbol" type="s:string" />
        <s:attribute name="ExchangeCode" type="s:string" />
        <s:attribute name="NewExchangeCode" type="s:string" />
      </s:complexType>
      <s:complexType name="ArrayOfNEWS">
        <s:sequence>
          <s:element minOccurs="0" maxOccurs="unbounded" name="NEWS" nillable="true" type="tns:NEWS" />
        </s:sequence>
      </s:complexType>
      <s:complexType name="NEWS">
        <s:attribute name="Exchange" type="s:string" />
        <s:attribute name="Symbol" type="s:string" />
        <s:attribute name="Id" type="s:long" use="required" />
        <s:attribute name="SourceKey" type="s:string" />
        <s:attribute name="DateTime" type="s:dateTime" use="required" />
        <s:attribute name="Headline" type="s:string" />
        <s:attribute name="Introduction" type="s:string" />
        <s:attribute name="Story" type="s:string" />
        <s:attribute name="Caption" type="s:string" />
        <s:attribute name="Views" type="s:int" use="required" />
      </s:complexType>
      <s:complexType name="ArrayOfDATAFORMAT">
        <s:sequence>
          <s:element minOccurs="0" maxOccurs="unbounded" name="DATAFORMAT" nillable="true" type="tns:DATAFORMAT" />
        </s:sequence>
      </s:complexType>
      <s:complexType name="DATAFORMAT">
        <s:sequence>
          <s:element minOccurs="0" maxOccurs="1" name="COLUMNS" type="tns:ArrayOfDATAFORMAT_COLUMN" />
        </s:sequence>
        <s:attribute name="Code" type="s:string" />
        <s:attribute name="Name" type="s:string" />
        <s:attribute name="Header" type="s:string" />
        <s:attribute name="DateFormat" type="s:string" />
        <s:attribute name="Extension" type="s:string" />
        <s:attribute name="IncludeSuffix" type="s:boolean" use="required" />
        <s:attribute name="TabColumnSeperator" type="s:boolean" use="required" />
        <s:attribute name="ColumnSeperator" type="s:string" />
        <s:attribute name="TextQualifier" type="s:string" />
        <s:attribute name="FilenamePrefix" type="s:string" />
        <s:attribute name="FilenameExchangeCode" type="s:boolean" use="required" />
        <s:attribute name="FilenameDate" type="s:boolean" use="required" />
        <s:attribute name="IncludeHeaderRow" type="s:boolean" use="required" />
        <s:attribute name="HourFormat" type="s:string" />
        <s:attribute name="DateTimeSeperator" type="s:string" />
        <s:attribute name="ExchangeFilenameFormatDate" type="s:string" />
        <s:attribute name="ExchangeFilenameFormatDateRange" type="s:string" />
        <s:attribute name="SymbolFilenameFormatDate" type="s:string" />
        <s:attribute name="SymbolFilenameFormatDateRange" type="s:string" />
      </s:complexType>
      <s:complexType name="ArrayOfDATAFORMAT_COLUMN">
        <s:sequence>
          <s:element minOccurs="0" maxOccurs="unbounded" name="DATAFORMAT_COLUMN" nillable="true" type="tns:DATAFORMAT_COLUMN" />
        </s:sequence>
      </s:complexType>
      <s:complexType name="DATAFORMAT_COLUMN">
        <s:attribute name="SortOrder" type="s:int" use="required" />
        <s:attribute name="Code" type="s:string" />
        <s:attribute name="DataFormat" type="s:string" />
        <s:attribute name="ColumnCode" type="s:string" />
        <s:attribute name="ColumnName" type="s:string" />
        <s:attribute name="ColumnTypeId" type="s:int" use="required" />
        <s:attribute name="ColumnType" type="s:string" />
        <s:attribute name="Header" type="s:string" />
      </s:complexType>
      <s:element name="ExchangeList">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="Token" type="s:string" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="ExchangeListResponse">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="ExchangeListResult" type="tns:RESPONSE" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="ExchangeGet">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="Token" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="Exchange" type="s:string" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="ExchangeGetResponse">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="ExchangeGetResult" type="tns:RESPONSE" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="SymbolList">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="Token" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="Exchange" type="s:string" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="SymbolListResponse">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="SymbolListResult" type="tns:RESPONSE" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="SymbolList2">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="Token" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="Exchange" type="s:string" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="SymbolList2Response">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="SymbolList2Result" type="tns:RESPONSE" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="QuoteGet">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="Token" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="Exchange" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="Symbol" type="s:string" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="QuoteGetResponse">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="QuoteGetResult" type="tns:RESPONSE" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="QuoteList2">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="Token" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="Exchange" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="Symbols" type="s:string" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="QuoteList2Response">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="QuoteList2Result" type="tns:RESPONSE" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="SymbolGet">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="Token" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="Exchange" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="Symbol" type="s:string" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="SymbolGetResponse">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="SymbolGetResult" type="tns:RESPONSE" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="QuoteList">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="Token" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="Exchange" type="s:string" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="QuoteListResponse">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="QuoteListResult" type="tns:RESPONSE" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="NewsList">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="Token" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="Exchange" type="s:string" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="NewsListResponse">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="NewsListResult" type="tns:RESPONSE" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="NewsListBySymbol">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="token" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="Exchange" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="symbol" type="s:string" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="NewsListBySymbolResponse">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="NewsListBySymbolResult" type="tns:RESPONSE" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="FundamentalList">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="Token" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="Exchange" type="s:string" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="FundamentalListResponse">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="FundamentalListResult" type="tns:RESPONSE" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="TechnicalList">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="Token" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="Exchange" type="s:string" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="TechnicalListResponse">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="TechnicalListResult" type="tns:RESPONSE" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="QuoteListByDate">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="Token" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="Exchange" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="QuoteDate" type="s:string" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="QuoteListByDateResponse">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="QuoteListByDateResult" type="tns:RESPONSE" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="QuoteListByDate2">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="Token" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="Exchange" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="QuoteDate" type="s:string" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="QuoteListByDate2Response">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="QuoteListByDate2Result" type="tns:RESPONSE" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="SymbolHistory">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="Token" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="Exchange" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="Symbol" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="StartDate" type="s:string" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="SymbolHistoryResponse">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="SymbolHistoryResult" type="tns:RESPONSE" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="Top10Gains">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="Token" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="Exchange" type="s:string" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="Top10GainsResponse">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="Top10GainsResult" type="tns:RESPONSE" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="Top10Losses">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="Token" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="Exchange" type="s:string" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="Top10LossesResponse">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="Top10LossesResult" type="tns:RESPONSE" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="SymbolChart">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="Token" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="Exchange" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="Symbol" type="s:string" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="SymbolChartResponse">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="SymbolChartResult" type="tns:RESPONSE" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="ExchangeMonths">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="Token" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="Exchange" type="s:string" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="ExchangeMonthsResponse">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="ExchangeMonthsResult" type="tns:RESPONSE" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="SplitListByExchange">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="Token" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="Exchange" type="s:string" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="SplitListByExchangeResponse">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="SplitListByExchangeResult" type="tns:RESPONSE" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="SplitListBySymbol">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="Token" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="Exchange" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="Symbol" type="s:string" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="SplitListBySymbolResponse">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="SplitListBySymbolResult" type="tns:RESPONSE" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="CountryList">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="Token" type="s:string" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="CountryListResponse">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="CountryListResult" type="tns:RESPONSE" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="SymbolHistoryPeriod">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="Token" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="Exchange" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="Symbol" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="Date" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="Period" type="s:string" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="SymbolHistoryPeriodResponse">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="SymbolHistoryPeriodResult" type="tns:RESPONSE" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="SymbolHistoryPeriodByDateRange">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="Token" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="Exchange" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="Symbol" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="StartDate" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="EndDate" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="Period" type="s:string" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="SymbolHistoryPeriodByDateRangeResponse">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="SymbolHistoryPeriodByDateRangeResult" type="tns:RESPONSE" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="QuoteListByDatePeriod">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="Token" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="Exchange" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="QuoteDate" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="Period" type="s:string" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="QuoteListByDatePeriodResponse">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="QuoteListByDatePeriodResult" type="tns:RESPONSE" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="QuoteListByDatePeriod2">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="Token" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="Exchange" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="QuoteDate" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="Period" type="s:string" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="QuoteListByDatePeriod2Response">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="QuoteListByDatePeriod2Result" type="tns:RESPONSE" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="SymbolChangesByExchange">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="Token" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="Exchange" type="s:string" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="SymbolChangesByExchangeResponse">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="SymbolChangesByExchangeResult" type="tns:RESPONSE" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="DataClientLatestVersion">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="Token" type="s:string" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="DataClientLatestVersionResponse">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="DataClientLatestVersionResult" type="tns:RESPONSE" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="DataFormats">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="Token" type="s:string" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="DataFormatsResponse">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="DataFormatsResult" type="tns:RESPONSE" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="UpdateDataFormat">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="Token" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="DataFormat" type="s:string" />
            <s:element minOccurs="1" maxOccurs="1" name="IncludeHeader" type="s:boolean" />
            <s:element minOccurs="1" maxOccurs="1" name="IncludeSuffix" type="s:boolean" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="UpdateDataFormatResponse">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="UpdateDataFormatResult" type="tns:RESPONSE" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="ValidateAccess">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="Token" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="Exchange" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="QuoteDate" type="s:string" />
            <s:element minOccurs="0" maxOccurs="1" name="Period" type="s:string" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="ValidateAccessResponse">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="ValidateAccessResult" type="tns:RESPONSE" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="LOGINRESPONSE" nillable="true" type="tns:LOGINRESPONSE" />
      <s:element name="RESPONSE" nillable="true" type="tns:RESPONSE" />
    </s:schema>
  </wsdl:types>
  <wsdl:message name="LoginSoapIn">
    <wsdl:part name="parameters" element="tns:Login" />
  </wsdl:message>
  <wsdl:message name="LoginSoapOut">
    <wsdl:part name="parameters" element="tns:LoginResponse" />
  </wsdl:message>
  <wsdl:message name="Login2SoapIn">
    <wsdl:part name="parameters" element="tns:Login2" />
  </wsdl:message>
  <wsdl:message name="Login2SoapOut">
    <wsdl:part name="parameters" element="tns:Login2Response" />
  </wsdl:message>
  <wsdl:message name="MembershipSoapIn">
    <wsdl:part name="parameters" element="tns:Membership" />
  </wsdl:message>
  <wsdl:message name="MembershipSoapOut">
    <wsdl:part name="parameters" element="tns:MembershipResponse" />
  </wsdl:message>
  <wsdl:message name="ExchangeListSoapIn">
    <wsdl:part name="parameters" element="tns:ExchangeList" />
  </wsdl:message>
  <wsdl:message name="ExchangeListSoapOut">
    <wsdl:part name="parameters" element="tns:ExchangeListResponse" />
  </wsdl:message>
  <wsdl:message name="ExchangeGetSoapIn">
    <wsdl:part name="parameters" element="tns:ExchangeGet" />
  </wsdl:message>
  <wsdl:message name="ExchangeGetSoapOut">
    <wsdl:part name="parameters" element="tns:ExchangeGetResponse" />
  </wsdl:message>
  <wsdl:message name="SymbolListSoapIn">
    <wsdl:part name="parameters" element="tns:SymbolList" />
  </wsdl:message>
  <wsdl:message name="SymbolListSoapOut">
    <wsdl:part name="parameters" element="tns:SymbolListResponse" />
  </wsdl:message>
  <wsdl:message name="SymbolList2SoapIn">
    <wsdl:part name="parameters" element="tns:SymbolList2" />
  </wsdl:message>
  <wsdl:message name="SymbolList2SoapOut">
    <wsdl:part name="parameters" element="tns:SymbolList2Response" />
  </wsdl:message>
  <wsdl:message name="QuoteGetSoapIn">
    <wsdl:part name="parameters" element="tns:QuoteGet" />
  </wsdl:message>
  <wsdl:message name="QuoteGetSoapOut">
    <wsdl:part name="parameters" element="tns:QuoteGetResponse" />
  </wsdl:message>
  <wsdl:message name="QuoteList2SoapIn">
    <wsdl:part name="parameters" element="tns:QuoteList2" />
  </wsdl:message>
  <wsdl:message name="QuoteList2SoapOut">
    <wsdl:part name="parameters" element="tns:QuoteList2Response" />
  </wsdl:message>
  <wsdl:message name="SymbolGetSoapIn">
    <wsdl:part name="parameters" element="tns:SymbolGet" />
  </wsdl:message>
  <wsdl:message name="SymbolGetSoapOut">
    <wsdl:part name="parameters" element="tns:SymbolGetResponse" />
  </wsdl:message>
  <wsdl:message name="QuoteListSoapIn">
    <wsdl:part name="parameters" element="tns:QuoteList" />
  </wsdl:message>
  <wsdl:message name="QuoteListSoapOut">
    <wsdl:part name="parameters" element="tns:QuoteListResponse" />
  </wsdl:message>
  <wsdl:message name="NewsListSoapIn">
    <wsdl:part name="parameters" element="tns:NewsList" />
  </wsdl:message>
  <wsdl:message name="NewsListSoapOut">
    <wsdl:part name="parameters" element="tns:NewsListResponse" />
  </wsdl:message>
  <wsdl:message name="NewsListBySymbolSoapIn">
    <wsdl:part name="parameters" element="tns:NewsListBySymbol" />
  </wsdl:message>
  <wsdl:message name="NewsListBySymbolSoapOut">
    <wsdl:part name="parameters" element="tns:NewsListBySymbolResponse" />
  </wsdl:message>
  <wsdl:message name="FundamentalListSoapIn">
    <wsdl:part name="parameters" element="tns:FundamentalList" />
  </wsdl:message>
  <wsdl:message name="FundamentalListSoapOut">
    <wsdl:part name="parameters" element="tns:FundamentalListResponse" />
  </wsdl:message>
  <wsdl:message name="TechnicalListSoapIn">
    <wsdl:part name="parameters" element="tns:TechnicalList" />
  </wsdl:message>
  <wsdl:message name="TechnicalListSoapOut">
    <wsdl:part name="parameters" element="tns:TechnicalListResponse" />
  </wsdl:message>
  <wsdl:message name="QuoteListByDateSoapIn">
    <wsdl:part name="parameters" element="tns:QuoteListByDate" />
  </wsdl:message>
  <wsdl:message name="QuoteListByDateSoapOut">
    <wsdl:part name="parameters" element="tns:QuoteListByDateResponse" />
  </wsdl:message>
  <wsdl:message name="QuoteListByDate2SoapIn">
    <wsdl:part name="parameters" element="tns:QuoteListByDate2" />
  </wsdl:message>
  <wsdl:message name="QuoteListByDate2SoapOut">
    <wsdl:part name="parameters" element="tns:QuoteListByDate2Response" />
  </wsdl:message>
  <wsdl:message name="SymbolHistorySoapIn">
    <wsdl:part name="parameters" element="tns:SymbolHistory" />
  </wsdl:message>
  <wsdl:message name="SymbolHistorySoapOut">
    <wsdl:part name="parameters" element="tns:SymbolHistoryResponse" />
  </wsdl:message>
  <wsdl:message name="Top10GainsSoapIn">
    <wsdl:part name="parameters" element="tns:Top10Gains" />
  </wsdl:message>
  <wsdl:message name="Top10GainsSoapOut">
    <wsdl:part name="parameters" element="tns:Top10GainsResponse" />
  </wsdl:message>
  <wsdl:message name="Top10LossesSoapIn">
    <wsdl:part name="parameters" element="tns:Top10Losses" />
  </wsdl:message>
  <wsdl:message name="Top10LossesSoapOut">
    <wsdl:part name="parameters" element="tns:Top10LossesResponse" />
  </wsdl:message>
  <wsdl:message name="SymbolChartSoapIn">
    <wsdl:part name="parameters" element="tns:SymbolChart" />
  </wsdl:message>
  <wsdl:message name="SymbolChartSoapOut">
    <wsdl:part name="parameters" element="tns:SymbolChartResponse" />
  </wsdl:message>
  <wsdl:message name="ExchangeMonthsSoapIn">
    <wsdl:part name="parameters" element="tns:ExchangeMonths" />
  </wsdl:message>
  <wsdl:message name="ExchangeMonthsSoapOut">
    <wsdl:part name="parameters" element="tns:ExchangeMonthsResponse" />
  </wsdl:message>
  <wsdl:message name="SplitListByExchangeSoapIn">
    <wsdl:part name="parameters" element="tns:SplitListByExchange" />
  </wsdl:message>
  <wsdl:message name="SplitListByExchangeSoapOut">
    <wsdl:part name="parameters" element="tns:SplitListByExchangeResponse" />
  </wsdl:message>
  <wsdl:message name="SplitListBySymbolSoapIn">
    <wsdl:part name="parameters" element="tns:SplitListBySymbol" />
  </wsdl:message>
  <wsdl:message name="SplitListBySymbolSoapOut">
    <wsdl:part name="parameters" element="tns:SplitListBySymbolResponse" />
  </wsdl:message>
  <wsdl:message name="CountryListSoapIn">
    <wsdl:part name="parameters" element="tns:CountryList" />
  </wsdl:message>
  <wsdl:message name="CountryListSoapOut">
    <wsdl:part name="parameters" element="tns:CountryListResponse" />
  </wsdl:message>
  <wsdl:message name="SymbolHistoryPeriodSoapIn">
    <wsdl:part name="parameters" element="tns:SymbolHistoryPeriod" />
  </wsdl:message>
  <wsdl:message name="SymbolHistoryPeriodSoapOut">
    <wsdl:part name="parameters" element="tns:SymbolHistoryPeriodResponse" />
  </wsdl:message>
  <wsdl:message name="SymbolHistoryPeriodByDateRangeSoapIn">
    <wsdl:part name="parameters" element="tns:SymbolHistoryPeriodByDateRange" />
  </wsdl:message>
  <wsdl:message name="SymbolHistoryPeriodByDateRangeSoapOut">
    <wsdl:part name="parameters" element="tns:SymbolHistoryPeriodByDateRangeResponse" />
  </wsdl:message>
  <wsdl:message name="QuoteListByDatePeriodSoapIn">
    <wsdl:part name="parameters" element="tns:QuoteListByDatePeriod" />
  </wsdl:message>
  <wsdl:message name="QuoteListByDatePeriodSoapOut">
    <wsdl:part name="parameters" element="tns:QuoteListByDatePeriodResponse" />
  </wsdl:message>
  <wsdl:message name="QuoteListByDatePeriod2SoapIn">
    <wsdl:part name="parameters" element="tns:QuoteListByDatePeriod2" />
  </wsdl:message>
  <wsdl:message name="QuoteListByDatePeriod2SoapOut">
    <wsdl:part name="parameters" element="tns:QuoteListByDatePeriod2Response" />
  </wsdl:message>
  <wsdl:message name="SymbolChangesByExchangeSoapIn">
    <wsdl:part name="parameters" element="tns:SymbolChangesByExchange" />
  </wsdl:message>
  <wsdl:message name="SymbolChangesByExchangeSoapOut">
    <wsdl:part name="parameters" element="tns:SymbolChangesByExchangeResponse" />
  </wsdl:message>
  <wsdl:message name="DataClientLatestVersionSoapIn">
    <wsdl:part name="parameters" element="tns:DataClientLatestVersion" />
  </wsdl:message>
  <wsdl:message name="DataClientLatestVersionSoapOut">
    <wsdl:part name="parameters" element="tns:DataClientLatestVersionResponse" />
  </wsdl:message>
  <wsdl:message name="DataFormatsSoapIn">
    <wsdl:part name="parameters" element="tns:DataFormats" />
  </wsdl:message>
  <wsdl:message name="DataFormatsSoapOut">
    <wsdl:part name="parameters" element="tns:DataFormatsResponse" />
  </wsdl:message>
  <wsdl:message name="UpdateDataFormatSoapIn">
    <wsdl:part name="parameters" element="tns:UpdateDataFormat" />
  </wsdl:message>
  <wsdl:message name="UpdateDataFormatSoapOut">
    <wsdl:part name="parameters" element="tns:UpdateDataFormatResponse" />
  </wsdl:message>
  <wsdl:message name="ValidateAccessSoapIn">
    <wsdl:part name="parameters" element="tns:ValidateAccess" />
  </wsdl:message>
  <wsdl:message name="ValidateAccessSoapOut">
    <wsdl:part name="parameters" element="tns:ValidateAccessResponse" />
  </wsdl:message>
  <wsdl:message name="LoginHttpGetIn">
    <wsdl:part name="Username" type="s:string" />
    <wsdl:part name="Password" type="s:string" />
  </wsdl:message>
  <wsdl:message name="LoginHttpGetOut">
    <wsdl:part name="Body" element="tns:LOGINRESPONSE" />
  </wsdl:message>
  <wsdl:message name="Login2HttpGetIn">
    <wsdl:part name="Username" type="s:string" />
    <wsdl:part name="Password" type="s:string" />
    <wsdl:part name="Version" type="s:string" />
  </wsdl:message>
  <wsdl:message name="Login2HttpGetOut">
    <wsdl:part name="Body" element="tns:LOGINRESPONSE" />
  </wsdl:message>
  <wsdl:message name="MembershipHttpGetIn">
    <wsdl:part name="Token" type="s:string" />
  </wsdl:message>
  <wsdl:message name="MembershipHttpGetOut">
    <wsdl:part name="Body" element="tns:RESPONSE" />
  </wsdl:message>
  <wsdl:message name="ExchangeListHttpGetIn">
    <wsdl:part name="Token" type="s:string" />
  </wsdl:message>
  <wsdl:message name="ExchangeListHttpGetOut">
    <wsdl:part name="Body" element="tns:RESPONSE" />
  </wsdl:message>
  <wsdl:message name="ExchangeGetHttpGetIn">
    <wsdl:part name="Token" type="s:string" />
    <wsdl:part name="Exchange" type="s:string" />
  </wsdl:message>
  <wsdl:message name="ExchangeGetHttpGetOut">
    <wsdl:part name="Body" element="tns:RESPONSE" />
  </wsdl:message>
  <wsdl:message name="SymbolListHttpGetIn">
    <wsdl:part name="Token" type="s:string" />
    <wsdl:part name="Exchange" type="s:string" />
  </wsdl:message>
  <wsdl:message name="SymbolListHttpGetOut">
    <wsdl:part name="Body" element="tns:RESPONSE" />
  </wsdl:message>
  <wsdl:message name="SymbolList2HttpGetIn">
    <wsdl:part name="Token" type="s:string" />
    <wsdl:part name="Exchange" type="s:string" />
  </wsdl:message>
  <wsdl:message name="SymbolList2HttpGetOut">
    <wsdl:part name="Body" element="tns:RESPONSE" />
  </wsdl:message>
  <wsdl:message name="QuoteGetHttpGetIn">
    <wsdl:part name="Token" type="s:string" />
    <wsdl:part name="Exchange" type="s:string" />
    <wsdl:part name="Symbol" type="s:string" />
  </wsdl:message>
  <wsdl:message name="QuoteGetHttpGetOut">
    <wsdl:part name="Body" element="tns:RESPONSE" />
  </wsdl:message>
  <wsdl:message name="QuoteList2HttpGetIn">
    <wsdl:part name="Token" type="s:string" />
    <wsdl:part name="Exchange" type="s:string" />
    <wsdl:part name="Symbols" type="s:string" />
  </wsdl:message>
  <wsdl:message name="QuoteList2HttpGetOut">
    <wsdl:part name="Body" element="tns:RESPONSE" />
  </wsdl:message>
  <wsdl:message name="SymbolGetHttpGetIn">
    <wsdl:part name="Token" type="s:string" />
    <wsdl:part name="Exchange" type="s:string" />
    <wsdl:part name="Symbol" type="s:string" />
  </wsdl:message>
  <wsdl:message name="SymbolGetHttpGetOut">
    <wsdl:part name="Body" element="tns:RESPONSE" />
  </wsdl:message>
  <wsdl:message name="QuoteListHttpGetIn">
    <wsdl:part name="Token" type="s:string" />
    <wsdl:part name="Exchange" type="s:string" />
  </wsdl:message>
  <wsdl:message name="QuoteListHttpGetOut">
    <wsdl:part name="Body" element="tns:RESPONSE" />
  </wsdl:message>
  <wsdl:message name="NewsListHttpGetIn">
    <wsdl:part name="Token" type="s:string" />
    <wsdl:part name="Exchange" type="s:string" />
  </wsdl:message>
  <wsdl:message name="NewsListHttpGetOut">
    <wsdl:part name="Body" element="tns:RESPONSE" />
  </wsdl:message>
  <wsdl:message name="NewsListBySymbolHttpGetIn">
    <wsdl:part name="token" type="s:string" />
    <wsdl:part name="Exchange" type="s:string" />
    <wsdl:part name="symbol" type="s:string" />
  </wsdl:message>
  <wsdl:message name="NewsListBySymbolHttpGetOut">
    <wsdl:part name="Body" element="tns:RESPONSE" />
  </wsdl:message>
  <wsdl:message name="FundamentalListHttpGetIn">
    <wsdl:part name="Token" type="s:string" />
    <wsdl:part name="Exchange" type="s:string" />
  </wsdl:message>
  <wsdl:message name="FundamentalListHttpGetOut">
    <wsdl:part name="Body" element="tns:RESPONSE" />
  </wsdl:message>
  <wsdl:message name="TechnicalListHttpGetIn">
    <wsdl:part name="Token" type="s:string" />
    <wsdl:part name="Exchange" type="s:string" />
  </wsdl:message>
  <wsdl:message name="TechnicalListHttpGetOut">
    <wsdl:part name="Body" element="tns:RESPONSE" />
  </wsdl:message>
  <wsdl:message name="QuoteListByDateHttpGetIn">
    <wsdl:part name="Token" type="s:string" />
    <wsdl:part name="Exchange" type="s:string" />
    <wsdl:part name="QuoteDate" type="s:string" />
  </wsdl:message>
  <wsdl:message name="QuoteListByDateHttpGetOut">
    <wsdl:part name="Body" element="tns:RESPONSE" />
  </wsdl:message>
  <wsdl:message name="QuoteListByDate2HttpGetIn">
    <wsdl:part name="Token" type="s:string" />
    <wsdl:part name="Exchange" type="s:string" />
    <wsdl:part name="QuoteDate" type="s:string" />
  </wsdl:message>
  <wsdl:message name="QuoteListByDate2HttpGetOut">
    <wsdl:part name="Body" element="tns:RESPONSE" />
  </wsdl:message>
  <wsdl:message name="SymbolHistoryHttpGetIn">
    <wsdl:part name="Token" type="s:string" />
    <wsdl:part name="Exchange" type="s:string" />
    <wsdl:part name="Symbol" type="s:string" />
    <wsdl:part name="StartDate" type="s:string" />
  </wsdl:message>
  <wsdl:message name="SymbolHistoryHttpGetOut">
    <wsdl:part name="Body" element="tns:RESPONSE" />
  </wsdl:message>
  <wsdl:message name="Top10GainsHttpGetIn">
    <wsdl:part name="Token" type="s:string" />
    <wsdl:part name="Exchange" type="s:string" />
  </wsdl:message>
  <wsdl:message name="Top10GainsHttpGetOut">
    <wsdl:part name="Body" element="tns:RESPONSE" />
  </wsdl:message>
  <wsdl:message name="Top10LossesHttpGetIn">
    <wsdl:part name="Token" type="s:string" />
    <wsdl:part name="Exchange" type="s:string" />
  </wsdl:message>
  <wsdl:message name="Top10LossesHttpGetOut">
    <wsdl:part name="Body" element="tns:RESPONSE" />
  </wsdl:message>
  <wsdl:message name="SymbolChartHttpGetIn">
    <wsdl:part name="Token" type="s:string" />
    <wsdl:part name="Exchange" type="s:string" />
    <wsdl:part name="Symbol" type="s:string" />
  </wsdl:message>
  <wsdl:message name="SymbolChartHttpGetOut">
    <wsdl:part name="Body" element="tns:RESPONSE" />
  </wsdl:message>
  <wsdl:message name="ExchangeMonthsHttpGetIn">
    <wsdl:part name="Token" type="s:string" />
    <wsdl:part name="Exchange" type="s:string" />
  </wsdl:message>
  <wsdl:message name="ExchangeMonthsHttpGetOut">
    <wsdl:part name="Body" element="tns:RESPONSE" />
  </wsdl:message>
  <wsdl:message name="SplitListByExchangeHttpGetIn">
    <wsdl:part name="Token" type="s:string" />
    <wsdl:part name="Exchange" type="s:string" />
  </wsdl:message>
  <wsdl:message name="SplitListByExchangeHttpGetOut">
    <wsdl:part name="Body" element="tns:RESPONSE" />
  </wsdl:message>
  <wsdl:message name="SplitListBySymbolHttpGetIn">
    <wsdl:part name="Token" type="s:string" />
    <wsdl:part name="Exchange" type="s:string" />
    <wsdl:part name="Symbol" type="s:string" />
  </wsdl:message>
  <wsdl:message name="SplitListBySymbolHttpGetOut">
    <wsdl:part name="Body" element="tns:RESPONSE" />
  </wsdl:message>
  <wsdl:message name="CountryListHttpGetIn">
    <wsdl:part name="Token" type="s:string" />
  </wsdl:message>
  <wsdl:message name="CountryListHttpGetOut">
    <wsdl:part name="Body" element="tns:RESPONSE" />
  </wsdl:message>
  <wsdl:message name="SymbolHistoryPeriodHttpGetIn">
    <wsdl:part name="Token" type="s:string" />
    <wsdl:part name="Exchange" type="s:string" />
    <wsdl:part name="Symbol" type="s:string" />
    <wsdl:part name="Date" type="s:string" />
    <wsdl:part name="Period" type="s:string" />
  </wsdl:message>
  <wsdl:message name="SymbolHistoryPeriodHttpGetOut">
    <wsdl:part name="Body" element="tns:RESPONSE" />
  </wsdl:message>
  <wsdl:message name="SymbolHistoryPeriodByDateRangeHttpGetIn">
    <wsdl:part name="Token" type="s:string" />
    <wsdl:part name="Exchange" type="s:string" />
    <wsdl:part name="Symbol" type="s:string" />
    <wsdl:part name="StartDate" type="s:string" />
    <wsdl:part name="EndDate" type="s:string" />
    <wsdl:part name="Period" type="s:string" />
  </wsdl:message>
  <wsdl:message name="SymbolHistoryPeriodByDateRangeHttpGetOut">
    <wsdl:part name="Body" element="tns:RESPONSE" />
  </wsdl:message>
  <wsdl:message name="QuoteListByDatePeriodHttpGetIn">
    <wsdl:part name="Token" type="s:string" />
    <wsdl:part name="Exchange" type="s:string" />
    <wsdl:part name="QuoteDate" type="s:string" />
    <wsdl:part name="Period" type="s:string" />
  </wsdl:message>
  <wsdl:message name="QuoteListByDatePeriodHttpGetOut">
    <wsdl:part name="Body" element="tns:RESPONSE" />
  </wsdl:message>
  <wsdl:message name="QuoteListByDatePeriod2HttpGetIn">
    <wsdl:part name="Token" type="s:string" />
    <wsdl:part name="Exchange" type="s:string" />
    <wsdl:part name="QuoteDate" type="s:string" />
    <wsdl:part name="Period" type="s:string" />
  </wsdl:message>
  <wsdl:message name="QuoteListByDatePeriod2HttpGetOut">
    <wsdl:part name="Body" element="tns:RESPONSE" />
  </wsdl:message>
  <wsdl:message name="SymbolChangesByExchangeHttpGetIn">
    <wsdl:part name="Token" type="s:string" />
    <wsdl:part name="Exchange" type="s:string" />
  </wsdl:message>
  <wsdl:message name="SymbolChangesByExchangeHttpGetOut">
    <wsdl:part name="Body" element="tns:RESPONSE" />
  </wsdl:message>
  <wsdl:message name="DataClientLatestVersionHttpGetIn">
    <wsdl:part name="Token" type="s:string" />
  </wsdl:message>
  <wsdl:message name="DataClientLatestVersionHttpGetOut">
    <wsdl:part name="Body" element="tns:RESPONSE" />
  </wsdl:message>
  <wsdl:message name="DataFormatsHttpGetIn">
    <wsdl:part name="Token" type="s:string" />
  </wsdl:message>
  <wsdl:message name="DataFormatsHttpGetOut">
    <wsdl:part name="Body" element="tns:RESPONSE" />
  </wsdl:message>
  <wsdl:message name="UpdateDataFormatHttpGetIn">
    <wsdl:part name="Token" type="s:string" />
    <wsdl:part name="DataFormat" type="s:string" />
    <wsdl:part name="IncludeHeader" type="s:string" />
    <wsdl:part name="IncludeSuffix" type="s:string" />
  </wsdl:message>
  <wsdl:message name="UpdateDataFormatHttpGetOut">
    <wsdl:part name="Body" element="tns:RESPONSE" />
  </wsdl:message>
  <wsdl:message name="ValidateAccessHttpGetIn">
    <wsdl:part name="Token" type="s:string" />
    <wsdl:part name="Exchange" type="s:string" />
    <wsdl:part name="QuoteDate" type="s:string" />
    <wsdl:part name="Period" type="s:string" />
  </wsdl:message>
  <wsdl:message name="ValidateAccessHttpGetOut">
    <wsdl:part name="Body" element="tns:RESPONSE" />
  </wsdl:message>
  <wsdl:message name="LoginHttpPostIn">
    <wsdl:part name="Username" type="s:string" />
    <wsdl:part name="Password" type="s:string" />
  </wsdl:message>
  <wsdl:message name="LoginHttpPostOut">
    <wsdl:part name="Body" element="tns:LOGINRESPONSE" />
  </wsdl:message>
  <wsdl:message name="Login2HttpPostIn">
    <wsdl:part name="Username" type="s:string" />
    <wsdl:part name="Password" type="s:string" />
    <wsdl:part name="Version" type="s:string" />
  </wsdl:message>
  <wsdl:message name="Login2HttpPostOut">
    <wsdl:part name="Body" element="tns:LOGINRESPONSE" />
  </wsdl:message>
  <wsdl:message name="MembershipHttpPostIn">
    <wsdl:part name="Token" type="s:string" />
  </wsdl:message>
  <wsdl:message name="MembershipHttpPostOut">
    <wsdl:part name="Body" element="tns:RESPONSE" />
  </wsdl:message>
  <wsdl:message name="ExchangeListHttpPostIn">
    <wsdl:part name="Token" type="s:string" />
  </wsdl:message>
  <wsdl:message name="ExchangeListHttpPostOut">
    <wsdl:part name="Body" element="tns:RESPONSE" />
  </wsdl:message>
  <wsdl:message name="ExchangeGetHttpPostIn">
    <wsdl:part name="Token" type="s:string" />
    <wsdl:part name="Exchange" type="s:string" />
  </wsdl:message>
  <wsdl:message name="ExchangeGetHttpPostOut">
    <wsdl:part name="Body" element="tns:RESPONSE" />
  </wsdl:message>
  <wsdl:message name="SymbolListHttpPostIn">
    <wsdl:part name="Token" type="s:string" />
    <wsdl:part name="Exchange" type="s:string" />
  </wsdl:message>
  <wsdl:message name="SymbolListHttpPostOut">
    <wsdl:part name="Body" element="tns:RESPONSE" />
  </wsdl:message>
  <wsdl:message name="SymbolList2HttpPostIn">
    <wsdl:part name="Token" type="s:string" />
    <wsdl:part name="Exchange" type="s:string" />
  </wsdl:message>
  <wsdl:message name="SymbolList2HttpPostOut">
    <wsdl:part name="Body" element="tns:RESPONSE" />
  </wsdl:message>
  <wsdl:message name="QuoteGetHttpPostIn">
    <wsdl:part name="Token" type="s:string" />
    <wsdl:part name="Exchange" type="s:string" />
    <wsdl:part name="Symbol" type="s:string" />
  </wsdl:message>
  <wsdl:message name="QuoteGetHttpPostOut">
    <wsdl:part name="Body" element="tns:RESPONSE" />
  </wsdl:message>
  <wsdl:message name="QuoteList2HttpPostIn">
    <wsdl:part name="Token" type="s:string" />
    <wsdl:part name="Exchange" type="s:string" />
    <wsdl:part name="Symbols" type="s:string" />
  </wsdl:message>
  <wsdl:message name="QuoteList2HttpPostOut">
    <wsdl:part name="Body" element="tns:RESPONSE" />
  </wsdl:message>
  <wsdl:message name="SymbolGetHttpPostIn">
    <wsdl:part name="Token" type="s:string" />
    <wsdl:part name="Exchange" type="s:string" />
    <wsdl:part name="Symbol" type="s:string" />
  </wsdl:message>
  <wsdl:message name="SymbolGetHttpPostOut">
    <wsdl:part name="Body" element="tns:RESPONSE" />
  </wsdl:message>
  <wsdl:message name="QuoteListHttpPostIn">
    <wsdl:part name="Token" type="s:string" />
    <wsdl:part name="Exchange" type="s:string" />
  </wsdl:message>
  <wsdl:message name="QuoteListHttpPostOut">
    <wsdl:part name="Body" element="tns:RESPONSE" />
  </wsdl:message>
  <wsdl:message name="NewsListHttpPostIn">
    <wsdl:part name="Token" type="s:string" />
    <wsdl:part name="Exchange" type="s:string" />
  </wsdl:message>
  <wsdl:message name="NewsListHttpPostOut">
    <wsdl:part name="Body" element="tns:RESPONSE" />
  </wsdl:message>
  <wsdl:message name="NewsListBySymbolHttpPostIn">
    <wsdl:part name="token" type="s:string" />
    <wsdl:part name="Exchange" type="s:string" />
    <wsdl:part name="symbol" type="s:string" />
  </wsdl:message>
  <wsdl:message name="NewsListBySymbolHttpPostOut">
    <wsdl:part name="Body" element="tns:RESPONSE" />
  </wsdl:message>
  <wsdl:message name="FundamentalListHttpPostIn">
    <wsdl:part name="Token" type="s:string" />
    <wsdl:part name="Exchange" type="s:string" />
  </wsdl:message>
  <wsdl:message name="FundamentalListHttpPostOut">
    <wsdl:part name="Body" element="tns:RESPONSE" />
  </wsdl:message>
  <wsdl:message name="TechnicalListHttpPostIn">
    <wsdl:part name="Token" type="s:string" />
    <wsdl:part name="Exchange" type="s:string" />
  </wsdl:message>
  <wsdl:message name="TechnicalListHttpPostOut">
    <wsdl:part name="Body" element="tns:RESPONSE" />
  </wsdl:message>
  <wsdl:message name="QuoteListByDateHttpPostIn">
    <wsdl:part name="Token" type="s:string" />
    <wsdl:part name="Exchange" type="s:string" />
    <wsdl:part name="QuoteDate" type="s:string" />
  </wsdl:message>
  <wsdl:message name="QuoteListByDateHttpPostOut">
    <wsdl:part name="Body" element="tns:RESPONSE" />
  </wsdl:message>
  <wsdl:message name="QuoteListByDate2HttpPostIn">
    <wsdl:part name="Token" type="s:string" />
    <wsdl:part name="Exchange" type="s:string" />
    <wsdl:part name="QuoteDate" type="s:string" />
  </wsdl:message>
  <wsdl:message name="QuoteListByDate2HttpPostOut">
    <wsdl:part name="Body" element="tns:RESPONSE" />
  </wsdl:message>
  <wsdl:message name="SymbolHistoryHttpPostIn">
    <wsdl:part name="Token" type="s:string" />
    <wsdl:part name="Exchange" type="s:string" />
    <wsdl:part name="Symbol" type="s:string" />
    <wsdl:part name="StartDate" type="s:string" />
  </wsdl:message>
  <wsdl:message name="SymbolHistoryHttpPostOut">
    <wsdl:part name="Body" element="tns:RESPONSE" />
  </wsdl:message>
  <wsdl:message name="Top10GainsHttpPostIn">
    <wsdl:part name="Token" type="s:string" />
    <wsdl:part name="Exchange" type="s:string" />
  </wsdl:message>
  <wsdl:message name="Top10GainsHttpPostOut">
    <wsdl:part name="Body" element="tns:RESPONSE" />
  </wsdl:message>
  <wsdl:message name="Top10LossesHttpPostIn">
    <wsdl:part name="Token" type="s:string" />
    <wsdl:part name="Exchange" type="s:string" />
  </wsdl:message>
  <wsdl:message name="Top10LossesHttpPostOut">
    <wsdl:part name="Body" element="tns:RESPONSE" />
  </wsdl:message>
  <wsdl:message name="SymbolChartHttpPostIn">
    <wsdl:part name="Token" type="s:string" />
    <wsdl:part name="Exchange" type="s:string" />
    <wsdl:part name="Symbol" type="s:string" />
  </wsdl:message>
  <wsdl:message name="SymbolChartHttpPostOut">
    <wsdl:part name="Body" element="tns:RESPONSE" />
  </wsdl:message>
  <wsdl:message name="ExchangeMonthsHttpPostIn">
    <wsdl:part name="Token" type="s:string" />
    <wsdl:part name="Exchange" type="s:string" />
  </wsdl:message>
  <wsdl:message name="ExchangeMonthsHttpPostOut">
    <wsdl:part name="Body" element="tns:RESPONSE" />
  </wsdl:message>
  <wsdl:message name="SplitListByExchangeHttpPostIn">
    <wsdl:part name="Token" type="s:string" />
    <wsdl:part name="Exchange" type="s:string" />
  </wsdl:message>
  <wsdl:message name="SplitListByExchangeHttpPostOut">
    <wsdl:part name="Body" element="tns:RESPONSE" />
  </wsdl:message>
  <wsdl:message name="SplitListBySymbolHttpPostIn">
    <wsdl:part name="Token" type="s:string" />
    <wsdl:part name="Exchange" type="s:string" />
    <wsdl:part name="Symbol" type="s:string" />
  </wsdl:message>
  <wsdl:message name="SplitListBySymbolHttpPostOut">
    <wsdl:part name="Body" element="tns:RESPONSE" />
  </wsdl:message>
  <wsdl:message name="CountryListHttpPostIn">
    <wsdl:part name="Token" type="s:string" />
  </wsdl:message>
  <wsdl:message name="CountryListHttpPostOut">
    <wsdl:part name="Body" element="tns:RESPONSE" />
  </wsdl:message>
  <wsdl:message name="SymbolHistoryPeriodHttpPostIn">
    <wsdl:part name="Token" type="s:string" />
    <wsdl:part name="Exchange" type="s:string" />
    <wsdl:part name="Symbol" type="s:string" />
    <wsdl:part name="Date" type="s:string" />
    <wsdl:part name="Period" type="s:string" />
  </wsdl:message>
  <wsdl:message name="SymbolHistoryPeriodHttpPostOut">
    <wsdl:part name="Body" element="tns:RESPONSE" />
  </wsdl:message>
  <wsdl:message name="SymbolHistoryPeriodByDateRangeHttpPostIn">
    <wsdl:part name="Token" type="s:string" />
    <wsdl:part name="Exchange" type="s:string" />
    <wsdl:part name="Symbol" type="s:string" />
    <wsdl:part name="StartDate" type="s:string" />
    <wsdl:part name="EndDate" type="s:string" />
    <wsdl:part name="Period" type="s:string" />
  </wsdl:message>
  <wsdl:message name="SymbolHistoryPeriodByDateRangeHttpPostOut">
    <wsdl:part name="Body" element="tns:RESPONSE" />
  </wsdl:message>
  <wsdl:message name="QuoteListByDatePeriodHttpPostIn">
    <wsdl:part name="Token" type="s:string" />
    <wsdl:part name="Exchange" type="s:string" />
    <wsdl:part name="QuoteDate" type="s:string" />
    <wsdl:part name="Period" type="s:string" />
  </wsdl:message>
  <wsdl:message name="QuoteListByDatePeriodHttpPostOut">
    <wsdl:part name="Body" element="tns:RESPONSE" />
  </wsdl:message>
  <wsdl:message name="QuoteListByDatePeriod2HttpPostIn">
    <wsdl:part name="Token" type="s:string" />
    <wsdl:part name="Exchange" type="s:string" />
    <wsdl:part name="QuoteDate" type="s:string" />
    <wsdl:part name="Period" type="s:string" />
  </wsdl:message>
  <wsdl:message name="QuoteListByDatePeriod2HttpPostOut">
    <wsdl:part name="Body" element="tns:RESPONSE" />
  </wsdl:message>
  <wsdl:message name="SymbolChangesByExchangeHttpPostIn">
    <wsdl:part name="Token" type="s:string" />
    <wsdl:part name="Exchange" type="s:string" />
  </wsdl:message>
  <wsdl:message name="SymbolChangesByExchangeHttpPostOut">
    <wsdl:part name="Body" element="tns:RESPONSE" />
  </wsdl:message>
  <wsdl:message name="DataClientLatestVersionHttpPostIn">
    <wsdl:part name="Token" type="s:string" />
  </wsdl:message>
  <wsdl:message name="DataClientLatestVersionHttpPostOut">
    <wsdl:part name="Body" element="tns:RESPONSE" />
  </wsdl:message>
  <wsdl:message name="DataFormatsHttpPostIn">
    <wsdl:part name="Token" type="s:string" />
  </wsdl:message>
  <wsdl:message name="DataFormatsHttpPostOut">
    <wsdl:part name="Body" element="tns:RESPONSE" />
  </wsdl:message>
  <wsdl:message name="UpdateDataFormatHttpPostIn">
    <wsdl:part name="Token" type="s:string" />
    <wsdl:part name="DataFormat" type="s:string" />
    <wsdl:part name="IncludeHeader" type="s:string" />
    <wsdl:part name="IncludeSuffix" type="s:string" />
  </wsdl:message>
  <wsdl:message name="UpdateDataFormatHttpPostOut">
    <wsdl:part name="Body" element="tns:RESPONSE" />
  </wsdl:message>
  <wsdl:message name="ValidateAccessHttpPostIn">
    <wsdl:part name="Token" type="s:string" />
    <wsdl:part name="Exchange" type="s:string" />
    <wsdl:part name="QuoteDate" type="s:string" />
    <wsdl:part name="Period" type="s:string" />
  </wsdl:message>
  <wsdl:message name="ValidateAccessHttpPostOut">
    <wsdl:part name="Body" element="tns:RESPONSE" />
  </wsdl:message>
  <wsdl:portType name="DataSoap">
    <wsdl:operation name="Login">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">Login to EODData Financial Information Web Service. Used for Web Authentication.&lt;br/&gt;INPUT: Username, Password&lt;br/&gt;OUTPUT: Login Token</wsdl:documentation>
      <wsdl:input message="tns:LoginSoapIn" />
      <wsdl:output message="tns:LoginSoapOut" />
    </wsdl:operation>
    <wsdl:operation name="Login2">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">Login to EODData Financial Information Web Service. Used for Application Authentication.&lt;br/&gt;INPUT: Username, Password, Version (Application Version)&lt;br/&gt;OUTPUT: Login Token</wsdl:documentation>
      <wsdl:input message="tns:Login2SoapIn" />
      <wsdl:output message="tns:Login2SoapOut" />
    </wsdl:operation>
    <wsdl:operation name="Membership">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">Returns membership of user.&lt;br/&gt;INPUT: Token (Login Token)&lt;br/&gt;OUTPUT: Membership</wsdl:documentation>
      <wsdl:input message="tns:MembershipSoapIn" />
      <wsdl:output message="tns:MembershipSoapOut" />
    </wsdl:operation>
    <wsdl:operation name="ExchangeList">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">Returns a list of available exchanges.&lt;br/&gt;INPUT: Token (Login Token)&lt;br/&gt;OUTPUT: List of exchanges</wsdl:documentation>
      <wsdl:input message="tns:ExchangeListSoapIn" />
      <wsdl:output message="tns:ExchangeListSoapOut" />
    </wsdl:operation>
    <wsdl:operation name="ExchangeGet">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">Returns detailed information of a specific exchange.&lt;br/&gt;INPUT: Token (Login Token), Exchange (eg: NASDAQ)&lt;br/&gt;OUTPUT: Exchange</wsdl:documentation>
      <wsdl:input message="tns:ExchangeGetSoapIn" />
      <wsdl:output message="tns:ExchangeGetSoapOut" />
    </wsdl:operation>
    <wsdl:operation name="SymbolList">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">Returns a list of symbols of a specified exchange. &lt;br/&gt;INPUT: Token (Login Token), Exchange (eg: NASDAQ)&lt;br/&gt;OUTPUT: List of symbols</wsdl:documentation>
      <wsdl:input message="tns:SymbolListSoapIn" />
      <wsdl:output message="tns:SymbolListSoapOut" />
    </wsdl:operation>
    <wsdl:operation name="SymbolList2">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">Returns a list of symbols of a specified exchange (compact format).&lt;br/&gt;INPUT: Token (Login Token), Exchange (eg: NASDAQ)&lt;br/&gt;OUTPUT: List of symbols</wsdl:documentation>
      <wsdl:input message="tns:SymbolList2SoapIn" />
      <wsdl:output message="tns:SymbolList2SoapOut" />
    </wsdl:operation>
    <wsdl:operation name="QuoteGet">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">Returns an end of day quote for a specific symbol.&lt;br/&gt;INPUT: Token (Login Token), Exchange (eg: NASDAQ), Symbol (eg:MSFT)&lt;br/&gt;OUTPUT: End of day quote</wsdl:documentation>
      <wsdl:input message="tns:QuoteGetSoapIn" />
      <wsdl:output message="tns:QuoteGetSoapOut" />
    </wsdl:operation>
    <wsdl:operation name="QuoteList2">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">Returns latest end of day quotes for a list of symbols of a specific exchange (compact format).&lt;br/&gt;INPUT: Token (Login Token), Exchange (eg: NASDAQ), Symbols (eg:MSFT,INTC)&lt;br/&gt;OUTPUT: List of end of day quotes</wsdl:documentation>
      <wsdl:input message="tns:QuoteList2SoapIn" />
      <wsdl:output message="tns:QuoteList2SoapOut" />
    </wsdl:operation>
    <wsdl:operation name="SymbolGet">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">Returns detailed information of a specific symbol.&lt;br/&gt;INPUT: Token (Login Token), Exchange (eg: NASDAQ), Symbol (eg:MSFT)&lt;br/&gt;OUTPUT: Symbol</wsdl:documentation>
      <wsdl:input message="tns:SymbolGetSoapIn" />
      <wsdl:output message="tns:SymbolGetSoapOut" />
    </wsdl:operation>
    <wsdl:operation name="QuoteList">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">Returns a complete list of end of day quotes for an entire exchange.&lt;br/&gt;INPUT: Token (Login Token), Exchange (eg: NASDAQ)&lt;br/&gt;OUTPUT: List of end of day quotes</wsdl:documentation>
      <wsdl:input message="tns:QuoteListSoapIn" />
      <wsdl:output message="tns:QuoteListSoapOut" />
    </wsdl:operation>
    <wsdl:operation name="NewsList">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">Returns a list of News articles for an entire exchange.&lt;br/&gt;INPUT: Token (Login Token), Exchange (eg: NASDAQ)&lt;br/&gt;OUTPUT: List of News articles</wsdl:documentation>
      <wsdl:input message="tns:NewsListSoapIn" />
      <wsdl:output message="tns:NewsListSoapOut" />
    </wsdl:operation>
    <wsdl:operation name="NewsListBySymbol">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">Returns a list of News articles for a given Exchange and Symbol.&lt;br/&gt;INPUT: Token (Login Token), Exchange (eg: NASDAQ), Symbol (eg: AAPL)&lt;br/&gt;OUTPUT: List of News articles</wsdl:documentation>
      <wsdl:input message="tns:NewsListBySymbolSoapIn" />
      <wsdl:output message="tns:NewsListBySymbolSoapOut" />
    </wsdl:operation>
    <wsdl:operation name="FundamentalList">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">Returns a complete list of fundamental data for an entire exchange.&lt;br/&gt;INPUT: Token (Login Token), Exchange (eg: NASDAQ)&lt;br/&gt;OUTPUT: List of fundamentals</wsdl:documentation>
      <wsdl:input message="tns:FundamentalListSoapIn" />
      <wsdl:output message="tns:FundamentalListSoapOut" />
    </wsdl:operation>
    <wsdl:operation name="TechnicalList">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">Returns a complete list of technical data for an entire exchange. &lt;br/&gt;INPUT: Token (Login Token), Exchange (eg: NASDAQ)&lt;br/&gt;OUTPUT: List of quotes</wsdl:documentation>
      <wsdl:input message="tns:TechnicalListSoapIn" />
      <wsdl:output message="tns:TechnicalListSoapOut" />
    </wsdl:operation>
    <wsdl:operation name="QuoteListByDate">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">Returns a complete list of end of day quotes for an entire exchange and a specific date.&lt;br/&gt;INPUT: Token (Login Token), Exchange (eg: NASDAQ), QuoteDate (format:yyyyMMdd eg:20080225)&lt;br/&gt;OUTPUT: List of end of day quotes</wsdl:documentation>
      <wsdl:input message="tns:QuoteListByDateSoapIn" />
      <wsdl:output message="tns:QuoteListByDateSoapOut" />
    </wsdl:operation>
    <wsdl:operation name="QuoteListByDate2">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">Returns a complete list of end of day quotes for an entire exchange and a specific date (compact format).&lt;br/&gt;INPUT: Token (Login Token), Exchange (eg: NASDAQ), QuoteDate (format:yyyyMMdd eg:20080225)&lt;br/&gt;OUTPUT: List of end of day quotes</wsdl:documentation>
      <wsdl:input message="tns:QuoteListByDate2SoapIn" />
      <wsdl:output message="tns:QuoteListByDate2SoapOut" />
    </wsdl:operation>
    <wsdl:operation name="SymbolHistory">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">Returns a list of historical end of day data of a specified symbol and specified start date up to today's date.&lt;br/&gt;INPUT: Token (Login Token), Exchange (eg: NASDAQ), Symbol (eg:MSFT), StartDate (format:yyyyMMdd eg:20080225)&lt;br/&gt;OUTPUT: List of historical end of day quotes</wsdl:documentation>
      <wsdl:input message="tns:SymbolHistorySoapIn" />
      <wsdl:output message="tns:SymbolHistorySoapOut" />
    </wsdl:operation>
    <wsdl:operation name="Top10Gains">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">Returns a list of the Top 10 Gains of a specified exchange. &lt;br/&gt;INPUT: Token (Login Token), Exchange (eg: NASDAQ)&lt;br/&gt;OUTPUT: List of quotes</wsdl:documentation>
      <wsdl:input message="tns:Top10GainsSoapIn" />
      <wsdl:output message="tns:Top10GainsSoapOut" />
    </wsdl:operation>
    <wsdl:operation name="Top10Losses">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">Returns a list of the Top 10 Losses of a specified exchange. &lt;br/&gt;INPUT: Token (Login Token), Exchange (eg: NASDAQ)&lt;br/&gt;OUTPUT: List of quotes</wsdl:documentation>
      <wsdl:input message="tns:Top10LossesSoapIn" />
      <wsdl:output message="tns:Top10LossesSoapOut" />
    </wsdl:operation>
    <wsdl:operation name="SymbolChart">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">Returns a URL to a chart image of a specific symbol.&lt;br/&gt;INPUT: Token (Login Token), Exchange (eg: NASDAQ), Symbol (eg:MSFT)&lt;br/&gt;OUTPUT: Chart URL</wsdl:documentation>
      <wsdl:input message="tns:SymbolChartSoapIn" />
      <wsdl:output message="tns:SymbolChartSoapOut" />
    </wsdl:operation>
    <wsdl:operation name="ExchangeMonths">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">Returns the number of Months history a user is allowed to download.&lt;br/&gt;INPUT: Token (Login Token), Exchange (eg: NASDAQ)&lt;br/&gt;OUTPUT: Number of Months</wsdl:documentation>
      <wsdl:input message="tns:ExchangeMonthsSoapIn" />
      <wsdl:output message="tns:ExchangeMonthsSoapOut" />
    </wsdl:operation>
    <wsdl:operation name="SplitListByExchange">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">Returns a list of Splits of a specific exchange.&lt;br/&gt;INPUT: Token (Login Token), Exchange (eg: NASDAQ)&lt;br/&gt;OUTPUT: List of splits</wsdl:documentation>
      <wsdl:input message="tns:SplitListByExchangeSoapIn" />
      <wsdl:output message="tns:SplitListByExchangeSoapOut" />
    </wsdl:operation>
    <wsdl:operation name="SplitListBySymbol">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">Returns a list of Splits of a specific symbol.&lt;br/&gt;INPUT: Token (Login Token), Exchange (eg: NASDAQ), Symbol (eg:MSFT)&lt;br/&gt;OUTPUT: List of splits</wsdl:documentation>
      <wsdl:input message="tns:SplitListBySymbolSoapIn" />
      <wsdl:output message="tns:SplitListBySymbolSoapOut" />
    </wsdl:operation>
    <wsdl:operation name="CountryList">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">Returns a list of available countries.&lt;br/&gt;INPUT: Token (Login Token)&lt;br/&gt;OUTPUT: List of countries</wsdl:documentation>
      <wsdl:input message="tns:CountryListSoapIn" />
      <wsdl:output message="tns:CountryListSoapOut" />
    </wsdl:operation>
    <wsdl:operation name="SymbolHistoryPeriod">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">Returns a list of historical data of a specified symbol, specified date and specified period.&lt;br/&gt;INPUT: Token (Login Token), Exchange (eg: NASDAQ), Symbol (eg:MSFT), Date (format:yyyyMMdd eg:20080225), Period (1, 5, 10, 15, 30, h, d, w, m)&lt;br/&gt;OUTPUT: List of historical quotes</wsdl:documentation>
      <wsdl:input message="tns:SymbolHistoryPeriodSoapIn" />
      <wsdl:output message="tns:SymbolHistoryPeriodSoapOut" />
    </wsdl:operation>
    <wsdl:operation name="SymbolHistoryPeriodByDateRange">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">Returns a list of historical data of a specified symbol, specified date range and specified period.&lt;br/&gt;INPUT: Token (Login Token), Exchange (eg: NASDAQ), Symbol (eg:MSFT), StartDate (format:yyyyMMdd eg:20080225), EndDate (format:yyyyMMdd eg:20080225), Period (1, 5, 10, 15, 30, h, d, w, m)&lt;br/&gt;OUTPUT: List of historical quotes</wsdl:documentation>
      <wsdl:input message="tns:SymbolHistoryPeriodByDateRangeSoapIn" />
      <wsdl:output message="tns:SymbolHistoryPeriodByDateRangeSoapOut" />
    </wsdl:operation>
    <wsdl:operation name="QuoteListByDatePeriod">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">Returns a complete list of quotes for an entire exchange, specific date, and specific period.&lt;br/&gt;INPUT: Token (Login Token), Exchange (eg: NASDAQ), QuoteDate (format:yyyyMMdd eg:20080225), Period (1, 5, 10, 15, 30, h, d, w, m)&lt;br/&gt;OUTPUT: List of quotes</wsdl:documentation>
      <wsdl:input message="tns:QuoteListByDatePeriodSoapIn" />
      <wsdl:output message="tns:QuoteListByDatePeriodSoapOut" />
    </wsdl:operation>
    <wsdl:operation name="QuoteListByDatePeriod2">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">Returns a complete list of quotes for an entire exchange, specific date, and specific period (compact format).&lt;br/&gt;INPUT: Token (Login Token), Exchange (eg: NASDAQ), QuoteDate (format:yyyyMMdd eg:20080225), Period (1, 5, 10, 15, 30, h, d, w, m)&lt;br/&gt;OUTPUT: List of quotes</wsdl:documentation>
      <wsdl:input message="tns:QuoteListByDatePeriod2SoapIn" />
      <wsdl:output message="tns:QuoteListByDatePeriod2SoapOut" />
    </wsdl:operation>
    <wsdl:operation name="SymbolChangesByExchange">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">Returns a list of symbol changes of a given exchange. &lt;br/&gt;INPUT: Token (Login Token), Exchange (eg: NASDAQ)&lt;br/&gt;OUTPUT: List of symbol changes</wsdl:documentation>
      <wsdl:input message="tns:SymbolChangesByExchangeSoapIn" />
      <wsdl:output message="tns:SymbolChangesByExchangeSoapOut" />
    </wsdl:operation>
    <wsdl:operation name="DataClientLatestVersion">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">Returns the latest version information of Data Client.&lt;br/&gt;INPUT: Token (Login Token)&lt;br/&gt;OUTPUT: Date Client Version</wsdl:documentation>
      <wsdl:input message="tns:DataClientLatestVersionSoapIn" />
      <wsdl:output message="tns:DataClientLatestVersionSoapOut" />
    </wsdl:operation>
    <wsdl:operation name="DataFormats">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">Returns the list of data formats.&lt;br/&gt;INPUT: Token (Login Token)&lt;br/&gt;OUTPUT: List of DataFormats</wsdl:documentation>
      <wsdl:input message="tns:DataFormatsSoapIn" />
      <wsdl:output message="tns:DataFormatsSoapOut" />
    </wsdl:operation>
    <wsdl:operation name="UpdateDataFormat">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">Update preferred Data Format&lt;br/&gt;INPUT: Token (Login Token), IncludeHeader, IncludeSuffix&lt;br/&gt;OUTPUT: List of DataFormats</wsdl:documentation>
      <wsdl:input message="tns:UpdateDataFormatSoapIn" />
      <wsdl:output message="tns:UpdateDataFormatSoapOut" />
    </wsdl:operation>
    <wsdl:operation name="ValidateAccess">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">Validate access for an entire exchange, specific date, and specific period.&lt;br/&gt;INPUT: Token (Login Token), Exchange (eg: NASDAQ), QuoteDate (format:yyyyMMdd eg:20080225), Period (1, 5, 10, 15, 30, h, d, w, m)&lt;br/&gt;OUTPUT: RESPONSE</wsdl:documentation>
      <wsdl:input message="tns:ValidateAccessSoapIn" />
      <wsdl:output message="tns:ValidateAccessSoapOut" />
    </wsdl:operation>
  </wsdl:portType>
  <wsdl:portType name="DataHttpGet">
    <wsdl:operation name="Login">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">Login to EODData Financial Information Web Service. Used for Web Authentication.&lt;br/&gt;INPUT: Username, Password&lt;br/&gt;OUTPUT: Login Token</wsdl:documentation>
      <wsdl:input message="tns:LoginHttpGetIn" />
      <wsdl:output message="tns:LoginHttpGetOut" />
    </wsdl:operation>
    <wsdl:operation name="Login2">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">Login to EODData Financial Information Web Service. Used for Application Authentication.&lt;br/&gt;INPUT: Username, Password, Version (Application Version)&lt;br/&gt;OUTPUT: Login Token</wsdl:documentation>
      <wsdl:input message="tns:Login2HttpGetIn" />
      <wsdl:output message="tns:Login2HttpGetOut" />
    </wsdl:operation>
    <wsdl:operation name="Membership">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">Returns membership of user.&lt;br/&gt;INPUT: Token (Login Token)&lt;br/&gt;OUTPUT: Membership</wsdl:documentation>
      <wsdl:input message="tns:MembershipHttpGetIn" />
      <wsdl:output message="tns:MembershipHttpGetOut" />
    </wsdl:operation>
    <wsdl:operation name="ExchangeList">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">Returns a list of available exchanges.&lt;br/&gt;INPUT: Token (Login Token)&lt;br/&gt;OUTPUT: List of exchanges</wsdl:documentation>
      <wsdl:input message="tns:ExchangeListHttpGetIn" />
      <wsdl:output message="tns:ExchangeListHttpGetOut" />
    </wsdl:operation>
    <wsdl:operation name="ExchangeGet">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">Returns detailed information of a specific exchange.&lt;br/&gt;INPUT: Token (Login Token), Exchange (eg: NASDAQ)&lt;br/&gt;OUTPUT: Exchange</wsdl:documentation>
      <wsdl:input message="tns:ExchangeGetHttpGetIn" />
      <wsdl:output message="tns:ExchangeGetHttpGetOut" />
    </wsdl:operation>
    <wsdl:operation name="SymbolList">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">Returns a list of symbols of a specified exchange. &lt;br/&gt;INPUT: Token (Login Token), Exchange (eg: NASDAQ)&lt;br/&gt;OUTPUT: List of symbols</wsdl:documentation>
      <wsdl:input message="tns:SymbolListHttpGetIn" />
      <wsdl:output message="tns:SymbolListHttpGetOut" />
    </wsdl:operation>
    <wsdl:operation name="SymbolList2">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">Returns a list of symbols of a specified exchange (compact format).&lt;br/&gt;INPUT: Token (Login Token), Exchange (eg: NASDAQ)&lt;br/&gt;OUTPUT: List of symbols</wsdl:documentation>
      <wsdl:input message="tns:SymbolList2HttpGetIn" />
      <wsdl:output message="tns:SymbolList2HttpGetOut" />
    </wsdl:operation>
    <wsdl:operation name="QuoteGet">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">Returns an end of day quote for a specific symbol.&lt;br/&gt;INPUT: Token (Login Token), Exchange (eg: NASDAQ), Symbol (eg:MSFT)&lt;br/&gt;OUTPUT: End of day quote</wsdl:documentation>
      <wsdl:input message="tns:QuoteGetHttpGetIn" />
      <wsdl:output message="tns:QuoteGetHttpGetOut" />
    </wsdl:operation>
    <wsdl:operation name="QuoteList2">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">Returns latest end of day quotes for a list of symbols of a specific exchange (compact format).&lt;br/&gt;INPUT: Token (Login Token), Exchange (eg: NASDAQ), Symbols (eg:MSFT,INTC)&lt;br/&gt;OUTPUT: List of end of day quotes</wsdl:documentation>
      <wsdl:input message="tns:QuoteList2HttpGetIn" />
      <wsdl:output message="tns:QuoteList2HttpGetOut" />
    </wsdl:operation>
    <wsdl:operation name="SymbolGet">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">Returns detailed information of a specific symbol.&lt;br/&gt;INPUT: Token (Login Token), Exchange (eg: NASDAQ), Symbol (eg:MSFT)&lt;br/&gt;OUTPUT: Symbol</wsdl:documentation>
      <wsdl:input message="tns:SymbolGetHttpGetIn" />
      <wsdl:output message="tns:SymbolGetHttpGetOut" />
    </wsdl:operation>
    <wsdl:operation name="QuoteList">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">Returns a complete list of end of day quotes for an entire exchange.&lt;br/&gt;INPUT: Token (Login Token), Exchange (eg: NASDAQ)&lt;br/&gt;OUTPUT: List of end of day quotes</wsdl:documentation>
      <wsdl:input message="tns:QuoteListHttpGetIn" />
      <wsdl:output message="tns:QuoteListHttpGetOut" />
    </wsdl:operation>
    <wsdl:operation name="NewsList">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">Returns a list of News articles for an entire exchange.&lt;br/&gt;INPUT: Token (Login Token), Exchange (eg: NASDAQ)&lt;br/&gt;OUTPUT: List of News articles</wsdl:documentation>
      <wsdl:input message="tns:NewsListHttpGetIn" />
      <wsdl:output message="tns:NewsListHttpGetOut" />
    </wsdl:operation>
    <wsdl:operation name="NewsListBySymbol">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">Returns a list of News articles for a given Exchange and Symbol.&lt;br/&gt;INPUT: Token (Login Token), Exchange (eg: NASDAQ), Symbol (eg: AAPL)&lt;br/&gt;OUTPUT: List of News articles</wsdl:documentation>
      <wsdl:input message="tns:NewsListBySymbolHttpGetIn" />
      <wsdl:output message="tns:NewsListBySymbolHttpGetOut" />
    </wsdl:operation>
    <wsdl:operation name="FundamentalList">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">Returns a complete list of fundamental data for an entire exchange.&lt;br/&gt;INPUT: Token (Login Token), Exchange (eg: NASDAQ)&lt;br/&gt;OUTPUT: List of fundamentals</wsdl:documentation>
      <wsdl:input message="tns:FundamentalListHttpGetIn" />
      <wsdl:output message="tns:FundamentalListHttpGetOut" />
    </wsdl:operation>
    <wsdl:operation name="TechnicalList">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">Returns a complete list of technical data for an entire exchange. &lt;br/&gt;INPUT: Token (Login Token), Exchange (eg: NASDAQ)&lt;br/&gt;OUTPUT: List of quotes</wsdl:documentation>
      <wsdl:input message="tns:TechnicalListHttpGetIn" />
      <wsdl:output message="tns:TechnicalListHttpGetOut" />
    </wsdl:operation>
    <wsdl:operation name="QuoteListByDate">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">Returns a complete list of end of day quotes for an entire exchange and a specific date.&lt;br/&gt;INPUT: Token (Login Token), Exchange (eg: NASDAQ), QuoteDate (format:yyyyMMdd eg:20080225)&lt;br/&gt;OUTPUT: List of end of day quotes</wsdl:documentation>
      <wsdl:input message="tns:QuoteListByDateHttpGetIn" />
      <wsdl:output message="tns:QuoteListByDateHttpGetOut" />
    </wsdl:operation>
    <wsdl:operation name="QuoteListByDate2">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">Returns a complete list of end of day quotes for an entire exchange and a specific date (compact format).&lt;br/&gt;INPUT: Token (Login Token), Exchange (eg: NASDAQ), QuoteDate (format:yyyyMMdd eg:20080225)&lt;br/&gt;OUTPUT: List of end of day quotes</wsdl:documentation>
      <wsdl:input message="tns:QuoteListByDate2HttpGetIn" />
      <wsdl:output message="tns:QuoteListByDate2HttpGetOut" />
    </wsdl:operation>
    <wsdl:operation name="SymbolHistory">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">Returns a list of historical end of day data of a specified symbol and specified start date up to today's date.&lt;br/&gt;INPUT: Token (Login Token), Exchange (eg: NASDAQ), Symbol (eg:MSFT), StartDate (format:yyyyMMdd eg:20080225)&lt;br/&gt;OUTPUT: List of historical end of day quotes</wsdl:documentation>
      <wsdl:input message="tns:SymbolHistoryHttpGetIn" />
      <wsdl:output message="tns:SymbolHistoryHttpGetOut" />
    </wsdl:operation>
    <wsdl:operation name="Top10Gains">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">Returns a list of the Top 10 Gains of a specified exchange. &lt;br/&gt;INPUT: Token (Login Token), Exchange (eg: NASDAQ)&lt;br/&gt;OUTPUT: List of quotes</wsdl:documentation>
      <wsdl:input message="tns:Top10GainsHttpGetIn" />
      <wsdl:output message="tns:Top10GainsHttpGetOut" />
    </wsdl:operation>
    <wsdl:operation name="Top10Losses">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">Returns a list of the Top 10 Losses of a specified exchange. &lt;br/&gt;INPUT: Token (Login Token), Exchange (eg: NASDAQ)&lt;br/&gt;OUTPUT: List of quotes</wsdl:documentation>
      <wsdl:input message="tns:Top10LossesHttpGetIn" />
      <wsdl:output message="tns:Top10LossesHttpGetOut" />
    </wsdl:operation>
    <wsdl:operation name="SymbolChart">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">Returns a URL to a chart image of a specific symbol.&lt;br/&gt;INPUT: Token (Login Token), Exchange (eg: NASDAQ), Symbol (eg:MSFT)&lt;br/&gt;OUTPUT: Chart URL</wsdl:documentation>
      <wsdl:input message="tns:SymbolChartHttpGetIn" />
      <wsdl:output message="tns:SymbolChartHttpGetOut" />
    </wsdl:operation>
    <wsdl:operation name="ExchangeMonths">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">Returns the number of Months history a user is allowed to download.&lt;br/&gt;INPUT: Token (Login Token), Exchange (eg: NASDAQ)&lt;br/&gt;OUTPUT: Number of Months</wsdl:documentation>
      <wsdl:input message="tns:ExchangeMonthsHttpGetIn" />
      <wsdl:output message="tns:ExchangeMonthsHttpGetOut" />
    </wsdl:operation>
    <wsdl:operation name="SplitListByExchange">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">Returns a list of Splits of a specific exchange.&lt;br/&gt;INPUT: Token (Login Token), Exchange (eg: NASDAQ)&lt;br/&gt;OUTPUT: List of splits</wsdl:documentation>
      <wsdl:input message="tns:SplitListByExchangeHttpGetIn" />
      <wsdl:output message="tns:SplitListByExchangeHttpGetOut" />
    </wsdl:operation>
    <wsdl:operation name="SplitListBySymbol">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">Returns a list of Splits of a specific symbol.&lt;br/&gt;INPUT: Token (Login Token), Exchange (eg: NASDAQ), Symbol (eg:MSFT)&lt;br/&gt;OUTPUT: List of splits</wsdl:documentation>
      <wsdl:input message="tns:SplitListBySymbolHttpGetIn" />
      <wsdl:output message="tns:SplitListBySymbolHttpGetOut" />
    </wsdl:operation>
    <wsdl:operation name="CountryList">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">Returns a list of available countries.&lt;br/&gt;INPUT: Token (Login Token)&lt;br/&gt;OUTPUT: List of countries</wsdl:documentation>
      <wsdl:input message="tns:CountryListHttpGetIn" />
      <wsdl:output message="tns:CountryListHttpGetOut" />
    </wsdl:operation>
    <wsdl:operation name="SymbolHistoryPeriod">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">Returns a list of historical data of a specified symbol, specified date and specified period.&lt;br/&gt;INPUT: Token (Login Token), Exchange (eg: NASDAQ), Symbol (eg:MSFT), Date (format:yyyyMMdd eg:20080225), Period (1, 5, 10, 15, 30, h, d, w, m)&lt;br/&gt;OUTPUT: List of historical quotes</wsdl:documentation>
      <wsdl:input message="tns:SymbolHistoryPeriodHttpGetIn" />
      <wsdl:output message="tns:SymbolHistoryPeriodHttpGetOut" />
    </wsdl:operation>
    <wsdl:operation name="SymbolHistoryPeriodByDateRange">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">Returns a list of historical data of a specified symbol, specified date range and specified period.&lt;br/&gt;INPUT: Token (Login Token), Exchange (eg: NASDAQ), Symbol (eg:MSFT), StartDate (format:yyyyMMdd eg:20080225), EndDate (format:yyyyMMdd eg:20080225), Period (1, 5, 10, 15, 30, h, d, w, m)&lt;br/&gt;OUTPUT: List of historical quotes</wsdl:documentation>
      <wsdl:input message="tns:SymbolHistoryPeriodByDateRangeHttpGetIn" />
      <wsdl:output message="tns:SymbolHistoryPeriodByDateRangeHttpGetOut" />
    </wsdl:operation>
    <wsdl:operation name="QuoteListByDatePeriod">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">Returns a complete list of quotes for an entire exchange, specific date, and specific period.&lt;br/&gt;INPUT: Token (Login Token), Exchange (eg: NASDAQ), QuoteDate (format:yyyyMMdd eg:20080225), Period (1, 5, 10, 15, 30, h, d, w, m)&lt;br/&gt;OUTPUT: List of quotes</wsdl:documentation>
      <wsdl:input message="tns:QuoteListByDatePeriodHttpGetIn" />
      <wsdl:output message="tns:QuoteListByDatePeriodHttpGetOut" />
    </wsdl:operation>
    <wsdl:operation name="QuoteListByDatePeriod2">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">Returns a complete list of quotes for an entire exchange, specific date, and specific period (compact format).&lt;br/&gt;INPUT: Token (Login Token), Exchange (eg: NASDAQ), QuoteDate (format:yyyyMMdd eg:20080225), Period (1, 5, 10, 15, 30, h, d, w, m)&lt;br/&gt;OUTPUT: List of quotes</wsdl:documentation>
      <wsdl:input message="tns:QuoteListByDatePeriod2HttpGetIn" />
      <wsdl:output message="tns:QuoteListByDatePeriod2HttpGetOut" />
    </wsdl:operation>
    <wsdl:operation name="SymbolChangesByExchange">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">Returns a list of symbol changes of a given exchange. &lt;br/&gt;INPUT: Token (Login Token), Exchange (eg: NASDAQ)&lt;br/&gt;OUTPUT: List of symbol changes</wsdl:documentation>
      <wsdl:input message="tns:SymbolChangesByExchangeHttpGetIn" />
      <wsdl:output message="tns:SymbolChangesByExchangeHttpGetOut" />
    </wsdl:operation>
    <wsdl:operation name="DataClientLatestVersion">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">Returns the latest version information of Data Client.&lt;br/&gt;INPUT: Token (Login Token)&lt;br/&gt;OUTPUT: Date Client Version</wsdl:documentation>
      <wsdl:input message="tns:DataClientLatestVersionHttpGetIn" />
      <wsdl:output message="tns:DataClientLatestVersionHttpGetOut" />
    </wsdl:operation>
    <wsdl:operation name="DataFormats">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">Returns the list of data formats.&lt;br/&gt;INPUT: Token (Login Token)&lt;br/&gt;OUTPUT: List of DataFormats</wsdl:documentation>
      <wsdl:input message="tns:DataFormatsHttpGetIn" />
      <wsdl:output message="tns:DataFormatsHttpGetOut" />
    </wsdl:operation>
    <wsdl:operation name="UpdateDataFormat">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">Update preferred Data Format&lt;br/&gt;INPUT: Token (Login Token), IncludeHeader, IncludeSuffix&lt;br/&gt;OUTPUT: List of DataFormats</wsdl:documentation>
      <wsdl:input message="tns:UpdateDataFormatHttpGetIn" />
      <wsdl:output message="tns:UpdateDataFormatHttpGetOut" />
    </wsdl:operation>
    <wsdl:operation name="ValidateAccess">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">Validate access for an entire exchange, specific date, and specific period.&lt;br/&gt;INPUT: Token (Login Token), Exchange (eg: NASDAQ), QuoteDate (format:yyyyMMdd eg:20080225), Period (1, 5, 10, 15, 30, h, d, w, m)&lt;br/&gt;OUTPUT: RESPONSE</wsdl:documentation>
      <wsdl:input message="tns:ValidateAccessHttpGetIn" />
      <wsdl:output message="tns:ValidateAccessHttpGetOut" />
    </wsdl:operation>
  </wsdl:portType>
  <wsdl:portType name="DataHttpPost">
    <wsdl:operation name="Login">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">Login to EODData Financial Information Web Service. Used for Web Authentication.&lt;br/&gt;INPUT: Username, Password&lt;br/&gt;OUTPUT: Login Token</wsdl:documentation>
      <wsdl:input message="tns:LoginHttpPostIn" />
      <wsdl:output message="tns:LoginHttpPostOut" />
    </wsdl:operation>
    <wsdl:operation name="Login2">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">Login to EODData Financial Information Web Service. Used for Application Authentication.&lt;br/&gt;INPUT: Username, Password, Version (Application Version)&lt;br/&gt;OUTPUT: Login Token</wsdl:documentation>
      <wsdl:input message="tns:Login2HttpPostIn" />
      <wsdl:output message="tns:Login2HttpPostOut" />
    </wsdl:operation>
    <wsdl:operation name="Membership">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">Returns membership of user.&lt;br/&gt;INPUT: Token (Login Token)&lt;br/&gt;OUTPUT: Membership</wsdl:documentation>
      <wsdl:input message="tns:MembershipHttpPostIn" />
      <wsdl:output message="tns:MembershipHttpPostOut" />
    </wsdl:operation>
    <wsdl:operation name="ExchangeList">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">Returns a list of available exchanges.&lt;br/&gt;INPUT: Token (Login Token)&lt;br/&gt;OUTPUT: List of exchanges</wsdl:documentation>
      <wsdl:input message="tns:ExchangeListHttpPostIn" />
      <wsdl:output message="tns:ExchangeListHttpPostOut" />
    </wsdl:operation>
    <wsdl:operation name="ExchangeGet">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">Returns detailed information of a specific exchange.&lt;br/&gt;INPUT: Token (Login Token), Exchange (eg: NASDAQ)&lt;br/&gt;OUTPUT: Exchange</wsdl:documentation>
      <wsdl:input message="tns:ExchangeGetHttpPostIn" />
      <wsdl:output message="tns:ExchangeGetHttpPostOut" />
    </wsdl:operation>
    <wsdl:operation name="SymbolList">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">Returns a list of symbols of a specified exchange. &lt;br/&gt;INPUT: Token (Login Token), Exchange (eg: NASDAQ)&lt;br/&gt;OUTPUT: List of symbols</wsdl:documentation>
      <wsdl:input message="tns:SymbolListHttpPostIn" />
      <wsdl:output message="tns:SymbolListHttpPostOut" />
    </wsdl:operation>
    <wsdl:operation name="SymbolList2">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">Returns a list of symbols of a specified exchange (compact format).&lt;br/&gt;INPUT: Token (Login Token), Exchange (eg: NASDAQ)&lt;br/&gt;OUTPUT: List of symbols</wsdl:documentation>
      <wsdl:input message="tns:SymbolList2HttpPostIn" />
      <wsdl:output message="tns:SymbolList2HttpPostOut" />
    </wsdl:operation>
    <wsdl:operation name="QuoteGet">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">Returns an end of day quote for a specific symbol.&lt;br/&gt;INPUT: Token (Login Token), Exchange (eg: NASDAQ), Symbol (eg:MSFT)&lt;br/&gt;OUTPUT: End of day quote</wsdl:documentation>
      <wsdl:input message="tns:QuoteGetHttpPostIn" />
      <wsdl:output message="tns:QuoteGetHttpPostOut" />
    </wsdl:operation>
    <wsdl:operation name="QuoteList2">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">Returns latest end of day quotes for a list of symbols of a specific exchange (compact format).&lt;br/&gt;INPUT: Token (Login Token), Exchange (eg: NASDAQ), Symbols (eg:MSFT,INTC)&lt;br/&gt;OUTPUT: List of end of day quotes</wsdl:documentation>
      <wsdl:input message="tns:QuoteList2HttpPostIn" />
      <wsdl:output message="tns:QuoteList2HttpPostOut" />
    </wsdl:operation>
    <wsdl:operation name="SymbolGet">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">Returns detailed information of a specific symbol.&lt;br/&gt;INPUT: Token (Login Token), Exchange (eg: NASDAQ), Symbol (eg:MSFT)&lt;br/&gt;OUTPUT: Symbol</wsdl:documentation>
      <wsdl:input message="tns:SymbolGetHttpPostIn" />
      <wsdl:output message="tns:SymbolGetHttpPostOut" />
    </wsdl:operation>
    <wsdl:operation name="QuoteList">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">Returns a complete list of end of day quotes for an entire exchange.&lt;br/&gt;INPUT: Token (Login Token), Exchange (eg: NASDAQ)&lt;br/&gt;OUTPUT: List of end of day quotes</wsdl:documentation>
      <wsdl:input message="tns:QuoteListHttpPostIn" />
      <wsdl:output message="tns:QuoteListHttpPostOut" />
    </wsdl:operation>
    <wsdl:operation name="NewsList">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">Returns a list of News articles for an entire exchange.&lt;br/&gt;INPUT: Token (Login Token), Exchange (eg: NASDAQ)&lt;br/&gt;OUTPUT: List of News articles</wsdl:documentation>
      <wsdl:input message="tns:NewsListHttpPostIn" />
      <wsdl:output message="tns:NewsListHttpPostOut" />
    </wsdl:operation>
    <wsdl:operation name="NewsListBySymbol">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">Returns a list of News articles for a given Exchange and Symbol.&lt;br/&gt;INPUT: Token (Login Token), Exchange (eg: NASDAQ), Symbol (eg: AAPL)&lt;br/&gt;OUTPUT: List of News articles</wsdl:documentation>
      <wsdl:input message="tns:NewsListBySymbolHttpPostIn" />
      <wsdl:output message="tns:NewsListBySymbolHttpPostOut" />
    </wsdl:operation>
    <wsdl:operation name="FundamentalList">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">Returns a complete list of fundamental data for an entire exchange.&lt;br/&gt;INPUT: Token (Login Token), Exchange (eg: NASDAQ)&lt;br/&gt;OUTPUT: List of fundamentals</wsdl:documentation>
      <wsdl:input message="tns:FundamentalListHttpPostIn" />
      <wsdl:output message="tns:FundamentalListHttpPostOut" />
    </wsdl:operation>
    <wsdl:operation name="TechnicalList">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">Returns a complete list of technical data for an entire exchange. &lt;br/&gt;INPUT: Token (Login Token), Exchange (eg: NASDAQ)&lt;br/&gt;OUTPUT: List of quotes</wsdl:documentation>
      <wsdl:input message="tns:TechnicalListHttpPostIn" />
      <wsdl:output message="tns:TechnicalListHttpPostOut" />
    </wsdl:operation>
    <wsdl:operation name="QuoteListByDate">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">Returns a complete list of end of day quotes for an entire exchange and a specific date.&lt;br/&gt;INPUT: Token (Login Token), Exchange (eg: NASDAQ), QuoteDate (format:yyyyMMdd eg:20080225)&lt;br/&gt;OUTPUT: List of end of day quotes</wsdl:documentation>
      <wsdl:input message="tns:QuoteListByDateHttpPostIn" />
      <wsdl:output message="tns:QuoteListByDateHttpPostOut" />
    </wsdl:operation>
    <wsdl:operation name="QuoteListByDate2">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">Returns a complete list of end of day quotes for an entire exchange and a specific date (compact format).&lt;br/&gt;INPUT: Token (Login Token), Exchange (eg: NASDAQ), QuoteDate (format:yyyyMMdd eg:20080225)&lt;br/&gt;OUTPUT: List of end of day quotes</wsdl:documentation>
      <wsdl:input message="tns:QuoteListByDate2HttpPostIn" />
      <wsdl:output message="tns:QuoteListByDate2HttpPostOut" />
    </wsdl:operation>
    <wsdl:operation name="SymbolHistory">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">Returns a list of historical end of day data of a specified symbol and specified start date up to today's date.&lt;br/&gt;INPUT: Token (Login Token), Exchange (eg: NASDAQ), Symbol (eg:MSFT), StartDate (format:yyyyMMdd eg:20080225)&lt;br/&gt;OUTPUT: List of historical end of day quotes</wsdl:documentation>
      <wsdl:input message="tns:SymbolHistoryHttpPostIn" />
      <wsdl:output message="tns:SymbolHistoryHttpPostOut" />
    </wsdl:operation>
    <wsdl:operation name="Top10Gains">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">Returns a list of the Top 10 Gains of a specified exchange. &lt;br/&gt;INPUT: Token (Login Token), Exchange (eg: NASDAQ)&lt;br/&gt;OUTPUT: List of quotes</wsdl:documentation>
      <wsdl:input message="tns:Top10GainsHttpPostIn" />
      <wsdl:output message="tns:Top10GainsHttpPostOut" />
    </wsdl:operation>
    <wsdl:operation name="Top10Losses">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">Returns a list of the Top 10 Losses of a specified exchange. &lt;br/&gt;INPUT: Token (Login Token), Exchange (eg: NASDAQ)&lt;br/&gt;OUTPUT: List of quotes</wsdl:documentation>
      <wsdl:input message="tns:Top10LossesHttpPostIn" />
      <wsdl:output message="tns:Top10LossesHttpPostOut" />
    </wsdl:operation>
    <wsdl:operation name="SymbolChart">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">Returns a URL to a chart image of a specific symbol.&lt;br/&gt;INPUT: Token (Login Token), Exchange (eg: NASDAQ), Symbol (eg:MSFT)&lt;br/&gt;OUTPUT: Chart URL</wsdl:documentation>
      <wsdl:input message="tns:SymbolChartHttpPostIn" />
      <wsdl:output message="tns:SymbolChartHttpPostOut" />
    </wsdl:operation>
    <wsdl:operation name="ExchangeMonths">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">Returns the number of Months history a user is allowed to download.&lt;br/&gt;INPUT: Token (Login Token), Exchange (eg: NASDAQ)&lt;br/&gt;OUTPUT: Number of Months</wsdl:documentation>
      <wsdl:input message="tns:ExchangeMonthsHttpPostIn" />
      <wsdl:output message="tns:ExchangeMonthsHttpPostOut" />
    </wsdl:operation>
    <wsdl:operation name="SplitListByExchange">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">Returns a list of Splits of a specific exchange.&lt;br/&gt;INPUT: Token (Login Token), Exchange (eg: NASDAQ)&lt;br/&gt;OUTPUT: List of splits</wsdl:documentation>
      <wsdl:input message="tns:SplitListByExchangeHttpPostIn" />
      <wsdl:output message="tns:SplitListByExchangeHttpPostOut" />
    </wsdl:operation>
    <wsdl:operation name="SplitListBySymbol">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">Returns a list of Splits of a specific symbol.&lt;br/&gt;INPUT: Token (Login Token), Exchange (eg: NASDAQ), Symbol (eg:MSFT)&lt;br/&gt;OUTPUT: List of splits</wsdl:documentation>
      <wsdl:input message="tns:SplitListBySymbolHttpPostIn" />
      <wsdl:output message="tns:SplitListBySymbolHttpPostOut" />
    </wsdl:operation>
    <wsdl:operation name="CountryList">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">Returns a list of available countries.&lt;br/&gt;INPUT: Token (Login Token)&lt;br/&gt;OUTPUT: List of countries</wsdl:documentation>
      <wsdl:input message="tns:CountryListHttpPostIn" />
      <wsdl:output message="tns:CountryListHttpPostOut" />
    </wsdl:operation>
    <wsdl:operation name="SymbolHistoryPeriod">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">Returns a list of historical data of a specified symbol, specified date and specified period.&lt;br/&gt;INPUT: Token (Login Token), Exchange (eg: NASDAQ), Symbol (eg:MSFT), Date (format:yyyyMMdd eg:20080225), Period (1, 5, 10, 15, 30, h, d, w, m)&lt;br/&gt;OUTPUT: List of historical quotes</wsdl:documentation>
      <wsdl:input message="tns:SymbolHistoryPeriodHttpPostIn" />
      <wsdl:output message="tns:SymbolHistoryPeriodHttpPostOut" />
    </wsdl:operation>
    <wsdl:operation name="SymbolHistoryPeriodByDateRange">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">Returns a list of historical data of a specified symbol, specified date range and specified period.&lt;br/&gt;INPUT: Token (Login Token), Exchange (eg: NASDAQ), Symbol (eg:MSFT), StartDate (format:yyyyMMdd eg:20080225), EndDate (format:yyyyMMdd eg:20080225), Period (1, 5, 10, 15, 30, h, d, w, m)&lt;br/&gt;OUTPUT: List of historical quotes</wsdl:documentation>
      <wsdl:input message="tns:SymbolHistoryPeriodByDateRangeHttpPostIn" />
      <wsdl:output message="tns:SymbolHistoryPeriodByDateRangeHttpPostOut" />
    </wsdl:operation>
    <wsdl:operation name="QuoteListByDatePeriod">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">Returns a complete list of quotes for an entire exchange, specific date, and specific period.&lt;br/&gt;INPUT: Token (Login Token), Exchange (eg: NASDAQ), QuoteDate (format:yyyyMMdd eg:20080225), Period (1, 5, 10, 15, 30, h, d, w, m)&lt;br/&gt;OUTPUT: List of quotes</wsdl:documentation>
      <wsdl:input message="tns:QuoteListByDatePeriodHttpPostIn" />
      <wsdl:output message="tns:QuoteListByDatePeriodHttpPostOut" />
    </wsdl:operation>
    <wsdl:operation name="QuoteListByDatePeriod2">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">Returns a complete list of quotes for an entire exchange, specific date, and specific period (compact format).&lt;br/&gt;INPUT: Token (Login Token), Exchange (eg: NASDAQ), QuoteDate (format:yyyyMMdd eg:20080225), Period (1, 5, 10, 15, 30, h, d, w, m)&lt;br/&gt;OUTPUT: List of quotes</wsdl:documentation>
      <wsdl:input message="tns:QuoteListByDatePeriod2HttpPostIn" />
      <wsdl:output message="tns:QuoteListByDatePeriod2HttpPostOut" />
    </wsdl:operation>
    <wsdl:operation name="SymbolChangesByExchange">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">Returns a list of symbol changes of a given exchange. &lt;br/&gt;INPUT: Token (Login Token), Exchange (eg: NASDAQ)&lt;br/&gt;OUTPUT: List of symbol changes</wsdl:documentation>
      <wsdl:input message="tns:SymbolChangesByExchangeHttpPostIn" />
      <wsdl:output message="tns:SymbolChangesByExchangeHttpPostOut" />
    </wsdl:operation>
    <wsdl:operation name="DataClientLatestVersion">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">Returns the latest version information of Data Client.&lt;br/&gt;INPUT: Token (Login Token)&lt;br/&gt;OUTPUT: Date Client Version</wsdl:documentation>
      <wsdl:input message="tns:DataClientLatestVersionHttpPostIn" />
      <wsdl:output message="tns:DataClientLatestVersionHttpPostOut" />
    </wsdl:operation>
    <wsdl:operation name="DataFormats">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">Returns the list of data formats.&lt;br/&gt;INPUT: Token (Login Token)&lt;br/&gt;OUTPUT: List of DataFormats</wsdl:documentation>
      <wsdl:input message="tns:DataFormatsHttpPostIn" />
      <wsdl:output message="tns:DataFormatsHttpPostOut" />
    </wsdl:operation>
    <wsdl:operation name="UpdateDataFormat">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">Update preferred Data Format&lt;br/&gt;INPUT: Token (Login Token), IncludeHeader, IncludeSuffix&lt;br/&gt;OUTPUT: List of DataFormats</wsdl:documentation>
      <wsdl:input message="tns:UpdateDataFormatHttpPostIn" />
      <wsdl:output message="tns:UpdateDataFormatHttpPostOut" />
    </wsdl:operation>
    <wsdl:operation name="ValidateAccess">
      <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">Validate access for an entire exchange, specific date, and specific period.&lt;br/&gt;INPUT: Token (Login Token), Exchange (eg: NASDAQ), QuoteDate (format:yyyyMMdd eg:20080225), Period (1, 5, 10, 15, 30, h, d, w, m)&lt;br/&gt;OUTPUT: RESPONSE</wsdl:documentation>
      <wsdl:input message="tns:ValidateAccessHttpPostIn" />
      <wsdl:output message="tns:ValidateAccessHttpPostOut" />
    </wsdl:operation>
  </wsdl:portType>
  <wsdl:binding name="DataSoap" type="tns:DataSoap">
    <soap:binding transport="http://schemas.xmlsoap.org/soap/http" />
    <wsdl:operation name="Login">
      <soap:operation soapAction="http://ws.eoddata.com/Data/Login" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="Login2">
      <soap:operation soapAction="http://ws.eoddata.com/Data/Login2" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="Membership">
      <soap:operation soapAction="http://ws.eoddata.com/Data/Membership" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="ExchangeList">
      <soap:operation soapAction="http://ws.eoddata.com/Data/ExchangeList" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="ExchangeGet">
      <soap:operation soapAction="http://ws.eoddata.com/Data/ExchangeGet" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="SymbolList">
      <soap:operation soapAction="http://ws.eoddata.com/Data/SymbolList" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="SymbolList2">
      <soap:operation soapAction="http://ws.eoddata.com/Data/SymbolList2" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="QuoteGet">
      <soap:operation soapAction="http://ws.eoddata.com/Data/QuoteGet" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="QuoteList2">
      <soap:operation soapAction="http://ws.eoddata.com/Data/QuoteList2" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="SymbolGet">
      <soap:operation soapAction="http://ws.eoddata.com/Data/SymbolGet" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="QuoteList">
      <soap:operation soapAction="http://ws.eoddata.com/Data/QuoteList" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="NewsList">
      <soap:operation soapAction="http://ws.eoddata.com/Data/NewsList" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="NewsListBySymbol">
      <soap:operation soapAction="http://ws.eoddata.com/Data/NewsListBySymbol" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="FundamentalList">
      <soap:operation soapAction="http://ws.eoddata.com/Data/FundamentalList" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="TechnicalList">
      <soap:operation soapAction="http://ws.eoddata.com/Data/TechnicalList" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="QuoteListByDate">
      <soap:operation soapAction="http://ws.eoddata.com/Data/QuoteListByDate" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="QuoteListByDate2">
      <soap:operation soapAction="http://ws.eoddata.com/Data/QuoteListByDate2" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="SymbolHistory">
      <soap:operation soapAction="http://ws.eoddata.com/Data/SymbolHistory" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="Top10Gains">
      <soap:operation soapAction="http://ws.eoddata.com/Data/Top10Gains" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="Top10Losses">
      <soap:operation soapAction="http://ws.eoddata.com/Data/Top10Losses" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="SymbolChart">
      <soap:operation soapAction="http://ws.eoddata.com/Data/SymbolChart" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="ExchangeMonths">
      <soap:operation soapAction="http://ws.eoddata.com/Data/ExchangeMonths" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="SplitListByExchange">
      <soap:operation soapAction="http://ws.eoddata.com/Data/SplitListByExchange" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="SplitListBySymbol">
      <soap:operation soapAction="http://ws.eoddata.com/Data/SplitListBySymbol" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="CountryList">
      <soap:operation soapAction="http://ws.eoddata.com/Data/CountryList" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="SymbolHistoryPeriod">
      <soap:operation soapAction="http://ws.eoddata.com/Data/SymbolHistoryPeriod" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="SymbolHistoryPeriodByDateRange">
      <soap:operation soapAction="http://ws.eoddata.com/Data/SymbolHistoryPeriodByDateRange" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="QuoteListByDatePeriod">
      <soap:operation soapAction="http://ws.eoddata.com/Data/QuoteListByDatePeriod" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="QuoteListByDatePeriod2">
      <soap:operation soapAction="http://ws.eoddata.com/Data/QuoteListByDatePeriod2" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="SymbolChangesByExchange">
      <soap:operation soapAction="http://ws.eoddata.com/Data/SymbolChangesByExchange" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="DataClientLatestVersion">
      <soap:operation soapAction="http://ws.eoddata.com/Data/DataClientLatestVersion" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="DataFormats">
      <soap:operation soapAction="http://ws.eoddata.com/Data/DataFormats" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="UpdateDataFormat">
      <soap:operation soapAction="http://ws.eoddata.com/Data/UpdateDataFormat" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="ValidateAccess">
      <soap:operation soapAction="http://ws.eoddata.com/Data/ValidateAccess" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
  </wsdl:binding>
  <wsdl:binding name="DataSoap12" type="tns:DataSoap">
    <soap12:binding transport="http://schemas.xmlsoap.org/soap/http" />
    <wsdl:operation name="Login">
      <soap12:operation soapAction="http://ws.eoddata.com/Data/Login" style="document" />
      <wsdl:input>
        <soap12:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="Login2">
      <soap12:operation soapAction="http://ws.eoddata.com/Data/Login2" style="document" />
      <wsdl:input>
        <soap12:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="Membership">
      <soap12:operation soapAction="http://ws.eoddata.com/Data/Membership" style="document" />
      <wsdl:input>
        <soap12:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="ExchangeList">
      <soap12:operation soapAction="http://ws.eoddata.com/Data/ExchangeList" style="document" />
      <wsdl:input>
        <soap12:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="ExchangeGet">
      <soap12:operation soapAction="http://ws.eoddata.com/Data/ExchangeGet" style="document" />
      <wsdl:input>
        <soap12:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="SymbolList">
      <soap12:operation soapAction="http://ws.eoddata.com/Data/SymbolList" style="document" />
      <wsdl:input>
        <soap12:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="SymbolList2">
      <soap12:operation soapAction="http://ws.eoddata.com/Data/SymbolList2" style="document" />
      <wsdl:input>
        <soap12:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="QuoteGet">
      <soap12:operation soapAction="http://ws.eoddata.com/Data/QuoteGet" style="document" />
      <wsdl:input>
        <soap12:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="QuoteList2">
      <soap12:operation soapAction="http://ws.eoddata.com/Data/QuoteList2" style="document" />
      <wsdl:input>
        <soap12:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="SymbolGet">
      <soap12:operation soapAction="http://ws.eoddata.com/Data/SymbolGet" style="document" />
      <wsdl:input>
        <soap12:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="QuoteList">
      <soap12:operation soapAction="http://ws.eoddata.com/Data/QuoteList" style="document" />
      <wsdl:input>
        <soap12:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="NewsList">
      <soap12:operation soapAction="http://ws.eoddata.com/Data/NewsList" style="document" />
      <wsdl:input>
        <soap12:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="NewsListBySymbol">
      <soap12:operation soapAction="http://ws.eoddata.com/Data/NewsListBySymbol" style="document" />
      <wsdl:input>
        <soap12:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="FundamentalList">
      <soap12:operation soapAction="http://ws.eoddata.com/Data/FundamentalList" style="document" />
      <wsdl:input>
        <soap12:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="TechnicalList">
      <soap12:operation soapAction="http://ws.eoddata.com/Data/TechnicalList" style="document" />
      <wsdl:input>
        <soap12:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="QuoteListByDate">
      <soap12:operation soapAction="http://ws.eoddata.com/Data/QuoteListByDate" style="document" />
      <wsdl:input>
        <soap12:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="QuoteListByDate2">
      <soap12:operation soapAction="http://ws.eoddata.com/Data/QuoteListByDate2" style="document" />
      <wsdl:input>
        <soap12:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="SymbolHistory">
      <soap12:operation soapAction="http://ws.eoddata.com/Data/SymbolHistory" style="document" />
      <wsdl:input>
        <soap12:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="Top10Gains">
      <soap12:operation soapAction="http://ws.eoddata.com/Data/Top10Gains" style="document" />
      <wsdl:input>
        <soap12:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="Top10Losses">
      <soap12:operation soapAction="http://ws.eoddata.com/Data/Top10Losses" style="document" />
      <wsdl:input>
        <soap12:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="SymbolChart">
      <soap12:operation soapAction="http://ws.eoddata.com/Data/SymbolChart" style="document" />
      <wsdl:input>
        <soap12:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="ExchangeMonths">
      <soap12:operation soapAction="http://ws.eoddata.com/Data/ExchangeMonths" style="document" />
      <wsdl:input>
        <soap12:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="SplitListByExchange">
      <soap12:operation soapAction="http://ws.eoddata.com/Data/SplitListByExchange" style="document" />
      <wsdl:input>
        <soap12:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="SplitListBySymbol">
      <soap12:operation soapAction="http://ws.eoddata.com/Data/SplitListBySymbol" style="document" />
      <wsdl:input>
        <soap12:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="CountryList">
      <soap12:operation soapAction="http://ws.eoddata.com/Data/CountryList" style="document" />
      <wsdl:input>
        <soap12:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="SymbolHistoryPeriod">
      <soap12:operation soapAction="http://ws.eoddata.com/Data/SymbolHistoryPeriod" style="document" />
      <wsdl:input>
        <soap12:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="SymbolHistoryPeriodByDateRange">
      <soap12:operation soapAction="http://ws.eoddata.com/Data/SymbolHistoryPeriodByDateRange" style="document" />
      <wsdl:input>
        <soap12:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="QuoteListByDatePeriod">
      <soap12:operation soapAction="http://ws.eoddata.com/Data/QuoteListByDatePeriod" style="document" />
      <wsdl:input>
        <soap12:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="QuoteListByDatePeriod2">
      <soap12:operation soapAction="http://ws.eoddata.com/Data/QuoteListByDatePeriod2" style="document" />
      <wsdl:input>
        <soap12:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="SymbolChangesByExchange">
      <soap12:operation soapAction="http://ws.eoddata.com/Data/SymbolChangesByExchange" style="document" />
      <wsdl:input>
        <soap12:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="DataClientLatestVersion">
      <soap12:operation soapAction="http://ws.eoddata.com/Data/DataClientLatestVersion" style="document" />
      <wsdl:input>
        <soap12:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="DataFormats">
      <soap12:operation soapAction="http://ws.eoddata.com/Data/DataFormats" style="document" />
      <wsdl:input>
        <soap12:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="UpdateDataFormat">
      <soap12:operation soapAction="http://ws.eoddata.com/Data/UpdateDataFormat" style="document" />
      <wsdl:input>
        <soap12:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="ValidateAccess">
      <soap12:operation soapAction="http://ws.eoddata.com/Data/ValidateAccess" style="document" />
      <wsdl:input>
        <soap12:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
  </wsdl:binding>
  <wsdl:binding name="DataHttpGet" type="tns:DataHttpGet">
    <http:binding verb="GET" />
    <wsdl:operation name="Login">
      <http:operation location="/Login" />
      <wsdl:input>
        <http:urlEncoded />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="Login2">
      <http:operation location="/Login2" />
      <wsdl:input>
        <http:urlEncoded />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="Membership">
      <http:operation location="/Membership" />
      <wsdl:input>
        <http:urlEncoded />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="ExchangeList">
      <http:operation location="/ExchangeList" />
      <wsdl:input>
        <http:urlEncoded />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="ExchangeGet">
      <http:operation location="/ExchangeGet" />
      <wsdl:input>
        <http:urlEncoded />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="SymbolList">
      <http:operation location="/SymbolList" />
      <wsdl:input>
        <http:urlEncoded />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="SymbolList2">
      <http:operation location="/SymbolList2" />
      <wsdl:input>
        <http:urlEncoded />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="QuoteGet">
      <http:operation location="/QuoteGet" />
      <wsdl:input>
        <http:urlEncoded />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="QuoteList2">
      <http:operation location="/QuoteList2" />
      <wsdl:input>
        <http:urlEncoded />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="SymbolGet">
      <http:operation location="/SymbolGet" />
      <wsdl:input>
        <http:urlEncoded />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="QuoteList">
      <http:operation location="/QuoteList" />
      <wsdl:input>
        <http:urlEncoded />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="NewsList">
      <http:operation location="/NewsList" />
      <wsdl:input>
        <http:urlEncoded />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="NewsListBySymbol">
      <http:operation location="/NewsListBySymbol" />
      <wsdl:input>
        <http:urlEncoded />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="FundamentalList">
      <http:operation location="/FundamentalList" />
      <wsdl:input>
        <http:urlEncoded />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="TechnicalList">
      <http:operation location="/TechnicalList" />
      <wsdl:input>
        <http:urlEncoded />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="QuoteListByDate">
      <http:operation location="/QuoteListByDate" />
      <wsdl:input>
        <http:urlEncoded />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="QuoteListByDate2">
      <http:operation location="/QuoteListByDate2" />
      <wsdl:input>
        <http:urlEncoded />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="SymbolHistory">
      <http:operation location="/SymbolHistory" />
      <wsdl:input>
        <http:urlEncoded />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="Top10Gains">
      <http:operation location="/Top10Gains" />
      <wsdl:input>
        <http:urlEncoded />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="Top10Losses">
      <http:operation location="/Top10Losses" />
      <wsdl:input>
        <http:urlEncoded />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="SymbolChart">
      <http:operation location="/SymbolChart" />
      <wsdl:input>
        <http:urlEncoded />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="ExchangeMonths">
      <http:operation location="/ExchangeMonths" />
      <wsdl:input>
        <http:urlEncoded />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="SplitListByExchange">
      <http:operation location="/SplitListByExchange" />
      <wsdl:input>
        <http:urlEncoded />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="SplitListBySymbol">
      <http:operation location="/SplitListBySymbol" />
      <wsdl:input>
        <http:urlEncoded />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="CountryList">
      <http:operation location="/CountryList" />
      <wsdl:input>
        <http:urlEncoded />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="SymbolHistoryPeriod">
      <http:operation location="/SymbolHistoryPeriod" />
      <wsdl:input>
        <http:urlEncoded />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="SymbolHistoryPeriodByDateRange">
      <http:operation location="/SymbolHistoryPeriodByDateRange" />
      <wsdl:input>
        <http:urlEncoded />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="QuoteListByDatePeriod">
      <http:operation location="/QuoteListByDatePeriod" />
      <wsdl:input>
        <http:urlEncoded />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="QuoteListByDatePeriod2">
      <http:operation location="/QuoteListByDatePeriod2" />
      <wsdl:input>
        <http:urlEncoded />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="SymbolChangesByExchange">
      <http:operation location="/SymbolChangesByExchange" />
      <wsdl:input>
        <http:urlEncoded />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="DataClientLatestVersion">
      <http:operation location="/DataClientLatestVersion" />
      <wsdl:input>
        <http:urlEncoded />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="DataFormats">
      <http:operation location="/DataFormats" />
      <wsdl:input>
        <http:urlEncoded />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="UpdateDataFormat">
      <http:operation location="/UpdateDataFormat" />
      <wsdl:input>
        <http:urlEncoded />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="ValidateAccess">
      <http:operation location="/ValidateAccess" />
      <wsdl:input>
        <http:urlEncoded />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
  </wsdl:binding>
  <wsdl:binding name="DataHttpPost" type="tns:DataHttpPost">
    <http:binding verb="POST" />
    <wsdl:operation name="Login">
      <http:operation location="/Login" />
      <wsdl:input>
        <mime:content type="application/x-www-form-urlencoded" />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="Login2">
      <http:operation location="/Login2" />
      <wsdl:input>
        <mime:content type="application/x-www-form-urlencoded" />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="Membership">
      <http:operation location="/Membership" />
      <wsdl:input>
        <mime:content type="application/x-www-form-urlencoded" />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="ExchangeList">
      <http:operation location="/ExchangeList" />
      <wsdl:input>
        <mime:content type="application/x-www-form-urlencoded" />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="ExchangeGet">
      <http:operation location="/ExchangeGet" />
      <wsdl:input>
        <mime:content type="application/x-www-form-urlencoded" />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="SymbolList">
      <http:operation location="/SymbolList" />
      <wsdl:input>
        <mime:content type="application/x-www-form-urlencoded" />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="SymbolList2">
      <http:operation location="/SymbolList2" />
      <wsdl:input>
        <mime:content type="application/x-www-form-urlencoded" />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="QuoteGet">
      <http:operation location="/QuoteGet" />
      <wsdl:input>
        <mime:content type="application/x-www-form-urlencoded" />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="QuoteList2">
      <http:operation location="/QuoteList2" />
      <wsdl:input>
        <mime:content type="application/x-www-form-urlencoded" />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="SymbolGet">
      <http:operation location="/SymbolGet" />
      <wsdl:input>
        <mime:content type="application/x-www-form-urlencoded" />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="QuoteList">
      <http:operation location="/QuoteList" />
      <wsdl:input>
        <mime:content type="application/x-www-form-urlencoded" />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="NewsList">
      <http:operation location="/NewsList" />
      <wsdl:input>
        <mime:content type="application/x-www-form-urlencoded" />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="NewsListBySymbol">
      <http:operation location="/NewsListBySymbol" />
      <wsdl:input>
        <mime:content type="application/x-www-form-urlencoded" />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="FundamentalList">
      <http:operation location="/FundamentalList" />
      <wsdl:input>
        <mime:content type="application/x-www-form-urlencoded" />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="TechnicalList">
      <http:operation location="/TechnicalList" />
      <wsdl:input>
        <mime:content type="application/x-www-form-urlencoded" />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="QuoteListByDate">
      <http:operation location="/QuoteListByDate" />
      <wsdl:input>
        <mime:content type="application/x-www-form-urlencoded" />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="QuoteListByDate2">
      <http:operation location="/QuoteListByDate2" />
      <wsdl:input>
        <mime:content type="application/x-www-form-urlencoded" />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="SymbolHistory">
      <http:operation location="/SymbolHistory" />
      <wsdl:input>
        <mime:content type="application/x-www-form-urlencoded" />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="Top10Gains">
      <http:operation location="/Top10Gains" />
      <wsdl:input>
        <mime:content type="application/x-www-form-urlencoded" />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="Top10Losses">
      <http:operation location="/Top10Losses" />
      <wsdl:input>
        <mime:content type="application/x-www-form-urlencoded" />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="SymbolChart">
      <http:operation location="/SymbolChart" />
      <wsdl:input>
        <mime:content type="application/x-www-form-urlencoded" />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="ExchangeMonths">
      <http:operation location="/ExchangeMonths" />
      <wsdl:input>
        <mime:content type="application/x-www-form-urlencoded" />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="SplitListByExchange">
      <http:operation location="/SplitListByExchange" />
      <wsdl:input>
        <mime:content type="application/x-www-form-urlencoded" />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="SplitListBySymbol">
      <http:operation location="/SplitListBySymbol" />
      <wsdl:input>
        <mime:content type="application/x-www-form-urlencoded" />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="CountryList">
      <http:operation location="/CountryList" />
      <wsdl:input>
        <mime:content type="application/x-www-form-urlencoded" />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="SymbolHistoryPeriod">
      <http:operation location="/SymbolHistoryPeriod" />
      <wsdl:input>
        <mime:content type="application/x-www-form-urlencoded" />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="SymbolHistoryPeriodByDateRange">
      <http:operation location="/SymbolHistoryPeriodByDateRange" />
      <wsdl:input>
        <mime:content type="application/x-www-form-urlencoded" />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="QuoteListByDatePeriod">
      <http:operation location="/QuoteListByDatePeriod" />
      <wsdl:input>
        <mime:content type="application/x-www-form-urlencoded" />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="QuoteListByDatePeriod2">
      <http:operation location="/QuoteListByDatePeriod2" />
      <wsdl:input>
        <mime:content type="application/x-www-form-urlencoded" />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="SymbolChangesByExchange">
      <http:operation location="/SymbolChangesByExchange" />
      <wsdl:input>
        <mime:content type="application/x-www-form-urlencoded" />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="DataClientLatestVersion">
      <http:operation location="/DataClientLatestVersion" />
      <wsdl:input>
        <mime:content type="application/x-www-form-urlencoded" />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="DataFormats">
      <http:operation location="/DataFormats" />
      <wsdl:input>
        <mime:content type="application/x-www-form-urlencoded" />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="UpdateDataFormat">
      <http:operation location="/UpdateDataFormat" />
      <wsdl:input>
        <mime:content type="application/x-www-form-urlencoded" />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="ValidateAccess">
      <http:operation location="/ValidateAccess" />
      <wsdl:input>
        <mime:content type="application/x-www-form-urlencoded" />
      </wsdl:input>
      <wsdl:output>
        <mime:mimeXml part="Body" />
      </wsdl:output>
    </wsdl:operation>
  </wsdl:binding>
  <wsdl:service name="Data">
    <wsdl:documentation xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">EODData Financial Information Web Service</wsdl:documentation>
    <wsdl:port name="DataSoap" binding="tns:DataSoap">
      <soap:address location="http://ws.eoddata.com/data.asmx" />
    </wsdl:port>
    <wsdl:port name="DataSoap12" binding="tns:DataSoap12">
      <soap12:address location="http://ws.eoddata.com/data.asmx" />
    </wsdl:port>
    <wsdl:port name="DataHttpGet" binding="tns:DataHttpGet">
      <http:address location="http://ws.eoddata.com/data.asmx" />
    </wsdl:port>
    <wsdl:port name="DataHttpPost" binding="tns:DataHttpPost">
      <http:address location="http://ws.eoddata.com/data.asmx" />
    </wsdl:port>
  </wsdl:service>
</wsdl:definitions>