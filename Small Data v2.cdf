(* Content-type: application/vnd.wolfram.cdf.text *)

(*** Wolfram CDF File ***)
(* http://www.wolfram.com/cdf *)

(* CreatedBy='Mathematica 11.0' *)

(*************************************************************************)
(*                                                                       *)
(*  The Mathematica License under which this file was created prohibits  *)
(*  restricting third parties in receipt of this file from republishing  *)
(*  or redistributing it by any means, including but not limited to      *)
(*  rights management or terms of use, without the express consent of    *)
(*  Wolfram Research, Inc. For additional information concerning CDF     *)
(*  licensing and redistribution see:                                    *)
(*                                                                       *)
(*        www.wolfram.com/cdf/adopting-cdf/licensing-options.html        *)
(*                                                                       *)
(*************************************************************************)

(*CacheID: 234*)
(* Internal cache information:
NotebookFileLineBreakTest
NotebookFileLineBreakTest
NotebookDataPosition[      1064,         20]
NotebookDataLength[    321697,       7385]
NotebookOptionsPosition[    315224,       7166]
NotebookOutlinePosition[    316464,       7210]
CellTagsIndexPosition[    316421,       7207]
WindowFrame->Normal*)

(* Beginning of Notebook Content *)
Notebook[{

Cell[CellGroupData[{
Cell["Making the Most of Available Data", "Title",
 CellChangeTimes->{{3.603032852207734*^9, 3.60303285855645*^9}, {
  3.603566697527267*^9, 3.6035667247345667`*^9}, {3.6036453165052834`*^9, 
  3.6036453172012587`*^9}, {3.603657781704441*^9, 3.6036577827522583`*^9}, {
  3.6036631459906597`*^9, 3.603663166687954*^9}}],

Cell["\<\
Simulation can help when data are sparse or uncertainty runs high. Here are \
four examples. I\[CloseCurlyQuote]ve left all the code in place so you can \
see it; you can safely ignore it without losing the thread.\
\>", "Subsection",
 CellChangeTimes->{{3.617813998841045*^9, 3.617814039182629*^9}, {
  3.617816340625218*^9, 3.6178163417833223`*^9}, {3.61782270793617*^9, 
  3.617822801182129*^9}}],

Cell[CellGroupData[{

Cell["Using Small Samples to Estimate a Median Value", "Section",
 CellChangeTimes->{{3.603584516290729*^9, 3.6035845200069027`*^9}, {
  3.603644396258275*^9, 3.603644407422879*^9}, {3.617810662807394*^9, 
  3.6178106732528887`*^9}}],

Cell[TextData[{
 "It\[CloseCurlyQuote]s easy to fixate on measuring things accurately. But if \
we step back a moment we\[CloseCurlyQuote]d realize that in many instances, \
we don\[CloseCurlyQuote]t need to be that accurate. All we need to know is if \
the thing we\[CloseCurlyQuote]re trying to measure is smaller or larger than \
a certain threshold. In these situations, we can do magic with small amounts \
of data! \n\nHere\[CloseCurlyQuote]s an example from Douglas Hubbard\
\[CloseCurlyQuote]s book, ",
 StyleBox["How to Measure Anything",
  FontSlant->"Italic"],
 ". I\[CloseCurlyQuote]ve revised it a bit for our purposes.\n\nA group of \
herders (let\[CloseCurlyQuote]s say there are a total of 200 of them) walk \
long distances in hostile territory to procure their daily supply of potable \
water. If the bulk of the group spends more than 8 hours a day procuring \
water, then we need to invest in keeping them safe. \n\nThe only available \
data on the group is from researchers who spent some time with just 7 members \
of the group. From this work we know that  of the 7 members each spent (on \
average) the following number of hours each day procuring water: 6, 11, 8, 4, \
9, 12, 16. That\[CloseCurlyQuote]s it for the available data.\n\n",
 StyleBox["Decision Criterion: If more than half of the group spends more \
than 8 hours a day procuring water, then they need more protection.",
  FontWeight->"Bold"],
 "\n\nTo make a decision we need to know the median time spent procuring \
water. If the median is above 8 hours, we act, if it isn\[CloseCurlyQuote]t, \
we don\[CloseCurlyQuote]t. Given our 7 data points, can we estimate the \
median? \n\nThe first thing to realize is that it\[CloseCurlyQuote]s almost \
certain that the median is somewhere between the lowest and the highest \
value. How certain? Well, with 7 data points, we can be more than 99% certain \
that the median is somewhere between 4 and 16."
}], "Text",
 CellChangeTimes->{{3.603584556111474*^9, 3.60358461578996*^9}, 
   3.603584682735446*^9, {3.603584723941174*^9, 3.603584848061225*^9}, {
   3.603585009052724*^9, 3.603585051960471*^9}, {3.603585100779478*^9, 
   3.603585179538789*^9}, {3.603585318952361*^9, 3.603585347255789*^9}, {
   3.60358540451112*^9, 3.603585495437711*^9}, {3.603585981631357*^9, 
   3.603586157892991*^9}, {3.603586188762858*^9, 3.6035863315347223`*^9}, {
   3.603586371842416*^9, 3.6035864383200912`*^9}, {3.603586497206073*^9, 
   3.60358655830107*^9}, {3.6035868869885902`*^9, 3.603586908039624*^9}, {
   3.603587050784801*^9, 3.60358705356898*^9}, {3.603587383537099*^9, 
   3.60358738756523*^9}, {3.603587479584263*^9, 3.603587541046229*^9}, {
   3.60358761488282*^9, 3.603587647088924*^9}, {3.603587743663803*^9, 
   3.6035877563909283`*^9}, {3.6036435955870123`*^9, 3.603643626872031*^9}, {
   3.603643658747375*^9, 3.603643750256168*^9}, {3.603643983874955*^9, 
   3.603644107623918*^9}, {3.603644644897092*^9, 3.603644821371269*^9}, {
   3.6036462116048927`*^9, 3.603646224338957*^9}, {3.6036463988154087`*^9, 
   3.6036464430433826`*^9}, {3.60364747027956*^9, 3.603647510398629*^9}, {
   3.603647811449912*^9, 3.6036478354748173`*^9}, {3.603657749757483*^9, 
   3.603657760777972*^9}, {3.60369814318041*^9, 3.6036982919796467`*^9}, {
   3.617810074401071*^9, 3.6178100791675863`*^9}, {3.6178101476667213`*^9, 
   3.617810160279385*^9}, {3.6660959047701*^9, 3.66609591062057*^9}, {
   3.666103524986916*^9, 3.666103550712854*^9}}],

Cell[BoxData[{
 RowBox[{
  RowBox[{
   RowBox[{"cert", "[", 
    RowBox[{"pSuccess_", " ", ",", " ", "nSuccessinarow_"}], "]"}], ":=", " ", 
   RowBox[{"1", " ", "-", " ", 
    RowBox[{"pSuccess", "^", "nSuccessinarow"}]}]}], 
  ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"cert2", " ", "=", " ", 
   RowBox[{"PDF", "[", 
    RowBox[{
     RowBox[{"BinomialDistribution", "[", 
      RowBox[{"6", ",", " ", "0.5"}], "]"}], ",", "x"}], "]"}]}], 
  ";"}]}], "Input",
 CellChangeTimes->{{3.603647332950985*^9, 3.6036474475867567`*^9}, {
  3.603647738586063*^9, 3.603647738929902*^9}, {3.603647783522704*^9, 
  3.603647784947226*^9}, {3.604246861521812*^9, 3.60424690076469*^9}, {
  3.604266268938746*^9, 3.604266275408174*^9}, {3.604266612274568*^9, 
  3.6042666416324053`*^9}, {3.604266688810153*^9, 3.604266700022698*^9}, {
  3.604266792396344*^9, 3.604266797722868*^9}, {3.60426712201064*^9, 
  3.604267123288045*^9}, {3.604267238150206*^9, 3.60426724075804*^9}}],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"1", "-", 
  RowBox[{"Table", "[", 
   RowBox[{"cert2", ",", " ", 
    RowBox[{"{", 
     RowBox[{"x", ",", "0", ",", "7"}], "}"}]}], "]"}]}]], "Input",
 CellChangeTimes->{{3.6042669957576933`*^9, 3.6042670092978354`*^9}, {
  3.604267157662737*^9, 3.604267158941955*^9}}],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{
  "0.984375`", ",", "0.90625`", ",", "0.765625`", ",", "0.6875`", ",", 
   "0.765625`", ",", "0.90625`", ",", "0.984375`", ",", "1"}], 
  "}"}]], "Output",
 CellChangeTimes->{
  3.604267011546446*^9, {3.604267137436545*^9, 3.60426716250633*^9}, 
   3.6042672505831213`*^9, 3.6178115811845293`*^9, 3.617815471287463*^9, 
   3.666103333570065*^9}]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"Tooltip", "[", 
  RowBox[{
   RowBox[{"DiscretePlot", "[", 
    RowBox[{"cert2", ",", " ", 
     RowBox[{"{", 
      RowBox[{"x", ",", "0", ",", "7"}], "}"}], ",", 
     RowBox[{"PlotRange", "\[Rule]", "All"}], ",", " ", 
     RowBox[{"PlotMarkers", "\[Rule]", "Automatic"}]}], "]"}], ",", " ", 
   RowBox[{"Evaluate", "[", 
    RowBox[{"cert2", "[", "x", "]"}], "]"}]}], "]"}]], "Input",
 CellChangeTimes->{{3.604246906840473*^9, 3.604246909341453*^9}, {
  3.6042469563026733`*^9, 3.604246986646741*^9}, {3.604266321920825*^9, 
  3.604266523516553*^9}, {3.604266650249217*^9, 3.60426665172968*^9}, {
  3.604266708079508*^9, 3.6042667583883553`*^9}, {3.604266805068306*^9, 
  3.604266959931779*^9}}],

Cell[BoxData[
 TagBox[
  TooltipBox[
   GraphicsBox[{
     {RGBColor[0.368417, 0.506779, 0.709798], PointSize[
      0.019444444444444445`], AbsoluteThickness[1.6], 
      {RGBColor[0.368417, 0.506779, 0.709798], PointSize[
       0.019444444444444445`], AbsoluteThickness[1.6], Opacity[0.2], 
       LineBox[{{{7., 0.}, {7., 0}}},
        VertexColors->None]}, 
      {RGBColor[0.368417, 0.506779, 0.709798], PointSize[
       0.019444444444444445`], AbsoluteThickness[1.6], Opacity[0.2], 
       LineBox[{{{0., 0.015625}, {0., 0}}, {{1., 0.09375}, {1., 0}}, {{2., 
          0.234375}, {2., 0}}, {{3., 0.3125}, {3., 0}}, {{4., 0.234375}, {
          4., 0}}, {{5., 0.09375}, {5., 0}}, {{6., 0.015625}, {6., 0}}},
        VertexColors->None]}}, 
     {RGBColor[0.368417, 0.506779, 0.709798], PointSize[
      0.019444444444444445`], AbsoluteThickness[1.6], {}, 
      GeometricTransformationBox[InsetBox[
        StyleBox["\<\"\[FilledCircle]\"\>",
         StripOnInput->False,
         LineColor->RGBColor[0.368417, 0.506779, 0.709798],
         FrontFaceColor->RGBColor[0.368417, 0.506779, 0.709798],
         BackFaceColor->RGBColor[0.368417, 0.506779, 0.709798],
         GraphicsColor->RGBColor[0.368417, 0.506779, 0.709798],
         PointSize->0.019444444444444445`,
         Thickness->Absolute[1.6],
         FontSize->8.96,
         FontColor->RGBColor[0.368417, 0.506779, 0.709798]], {0, 0}], {{{0., 
       0.015625}}, {{1., 0.09375}}, {{2., 0.234375}}, {{3., 0.3125}}, {{4., 
       0.234375}}, {{5., 0.09375}}, {{6., 0.015625}}, {{7., 0.}}}], {}}},
    AspectRatio->NCache[GoldenRatio^(-1), 0.6180339887498948],
    Axes->True,
    AxesOrigin->{0, 0},
    FrameTicks->{{Automatic, Automatic}, {Automatic, Automatic}},
    GridLinesStyle->Directive[
      GrayLevel[0.5, 0.4]],
    Method->{
     "MessagesHead" -> DiscretePlot, "AxisPadding" -> Scaled[0.02], 
      "DefaultBoundaryStyle" -> Automatic, "DefaultPlotStyle" -> {
        Directive[
         RGBColor[0.368417, 0.506779, 0.709798], 
         AbsoluteThickness[1.6]], 
        Directive[
         RGBColor[0.880722, 0.611041, 0.142051], 
         AbsoluteThickness[1.6]], 
        Directive[
         RGBColor[0.560181, 0.691569, 0.194885], 
         AbsoluteThickness[1.6]], 
        Directive[
         RGBColor[0.922526, 0.385626, 0.209179], 
         AbsoluteThickness[1.6]], 
        Directive[
         RGBColor[0.528488, 0.470624, 0.701351], 
         AbsoluteThickness[1.6]], 
        Directive[
         RGBColor[0.772079, 0.431554, 0.102387], 
         AbsoluteThickness[1.6]], 
        Directive[
         RGBColor[0.363898, 0.618501, 0.782349], 
         AbsoluteThickness[1.6]], 
        Directive[
         RGBColor[1, 0.75, 0], 
         AbsoluteThickness[1.6]], 
        Directive[
         RGBColor[0.647624, 0.37816, 0.614037], 
         AbsoluteThickness[1.6]], 
        Directive[
         RGBColor[0.571589, 0.586483, 0.], 
         AbsoluteThickness[1.6]], 
        Directive[
         RGBColor[0.915, 0.3325, 0.2125], 
         AbsoluteThickness[1.6]], 
        Directive[
         RGBColor[0.40082222609352647`, 0.5220066643438841, 0.85], 
         AbsoluteThickness[1.6]], 
        Directive[
         RGBColor[0.9728288904374106, 0.621644452187053, 0.07336199581899142], 
         AbsoluteThickness[1.6]], 
        Directive[
         RGBColor[0.736782672705901, 0.358, 0.5030266573755369], 
         AbsoluteThickness[1.6]], 
        Directive[
         RGBColor[0.28026441037696703`, 0.715, 0.4292089322474965], 
         AbsoluteThickness[1.6]]}, "DomainPadding" -> Scaled[0.02], 
      "RangePadding" -> Scaled[0.05]},
    PlotRange->{{0., 7.}, {0., 0.3125}},
    PlotRangePadding->{{
       Scaled[0.02], 
       Scaled[0.02]}, {
       Scaled[0.02], 
       Scaled[0.02]}},
    Ticks->{Automatic, Automatic}],
   RowBox[{
     RowBox[{"(", 
       TagBox[
        GridBox[{{"\[Piecewise]", 
           GridBox[{{
              RowBox[{"0.015625`", " ", 
                RowBox[{"Binomial", "[", 
                  RowBox[{"6", ",", "x"}], "]"}]}], 
              RowBox[{"0", "\[LessEqual]", "x", "\[LessEqual]", "6"}]}, {
             "0", 
              TagBox["True", "PiecewiseDefault", AutoDelete -> True]}}, 
            ColumnAlignments -> {Left}, ColumnSpacings -> 1.2, ColumnWidths -> 
            Automatic, AllowedDimensions -> {2, Automatic}, Selectable -> 
            True, Editable -> True]}}, ColumnAlignments -> {Left}, 
         ColumnSpacings -> 0.5, ColumnWidths -> Automatic], "Piecewise", 
        SyntaxForm -> Equal, SelectWithContents -> True, Selectable -> False, 
        Editable -> False, DeleteWithContents -> True], ")"}], "[", "x", 
     "]"}]],
  Annotation[#, 
   Piecewise[{{
     0.015625 Binomial[6, $CellContext`x], 0 <= $CellContext`x <= 6}}, 
    0][$CellContext`x], "Tooltip"]& ]], "Output",
 CellChangeTimes->{
  3.6042469891737013`*^9, 3.604266280889386*^9, {3.604266327693082*^9, 
   3.604266354221908*^9}, {3.604266387968775*^9, 3.60426641430888*^9}, {
   3.60426644947821*^9, 3.604266477701445*^9}, 3.6042665257967*^9, 
   3.604266655542536*^9, {3.60426672381085*^9, 3.6042667599067993`*^9}, 
   3.604266812571464*^9, {3.604266858804427*^9, 3.604266961703706*^9}, 
   3.617811581599485*^9, 3.617815471444767*^9}]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"cert", "[", 
  RowBox[{"0.5", ",", "6"}], "]"}]], "Input",
 CellChangeTimes->{{3.6036474499429073`*^9, 3.603647456937586*^9}, {
  3.603658430581254*^9, 3.603658452226843*^9}, {3.604267189442778*^9, 
  3.604267190119987*^9}}],

Cell[BoxData["0.984375`"], "Output",
 CellChangeTimes->{
  3.603647459311564*^9, 3.603647742286498*^9, 3.603647792060484*^9, {
   3.6036584317722883`*^9, 3.6036584534358673`*^9}, 3.6036719738117933`*^9, 
   3.603703699129768*^9, 3.604267191259494*^9, 3.604267223824833*^9, 
   3.617811581627254*^9, 3.6178154714630413`*^9}]
}, {2}]],

Cell["\<\
Here\[CloseCurlyQuote]s how to think about it. When you pick a member from \
the group, there\[CloseCurlyQuote]s a fifty-fifty chance that they\
\[CloseCurlyQuote]ll be above (or below) the median value. That\
\[CloseCurlyQuote]s what the median means. So picking someone is like tossing \
a coin; if they are over the median value then imagine \
they\[CloseCurlyQuote]re tails and if they are under the median value then \
imagine they\[CloseCurlyQuote]re heads. So, when a coin is tossed 7 times, \
the chance of getting all heads (i.e. all values below the median) or all \
tails (i.e. all values above the median) is less than 1% -- it\
\[CloseCurlyQuote]s about 0.78%. \
\>", "Text",
 CellChangeTimes->{{3.603645183115802*^9, 3.6036452669989767`*^9}, {
  3.60364587435172*^9, 3.603645877180133*^9}, {3.603647571397341*^9, 
  3.6036477311759787`*^9}, {3.603647762771146*^9, 3.6036477800167503`*^9}, {
  3.603658498740728*^9, 3.603658503018298*^9}}],

Cell["\<\
That\[CloseCurlyQuote]s nice, but can we do better? If the median is really \
8, how likely are the values we got? Let\[CloseCurlyQuote]s assume that the \
values are normally distributed but there\[CloseCurlyQuote]s a lot of \
variation (4 and 16 gives us a sense that the spread isn\[CloseCurlyQuote]t \
small).  \
\>", "Text",
 CellChangeTimes->{{3.6036458886779213`*^9, 3.603645901363755*^9}, {
  3.603645951311594*^9, 3.603645961047123*^9}, {3.6036459990627403`*^9, 
  3.6036460151313353`*^9}, {3.6036478552627373`*^9, 3.603647872057852*^9}, {
  3.6036479829795637`*^9, 3.603648074898649*^9}, {3.6036482535026417`*^9, 
  3.603648330271516*^9}, {3.603648395052865*^9, 3.603648395083605*^9}}],

Cell["\<\
Let\[CloseCurlyQuote]s simulate picking 7 values from a normal distribution \
that has a mean (and hence a median too) of 8 and a standard deviation of 4. \
We generate 10,000 such sets of 7 values picked at random from the normal \
distribution we\[CloseCurlyQuote]ve specified.\
\>", "Text",
 CellChangeTimes->{{3.6178104182498627`*^9, 3.617810574244514*^9}}],

Cell[BoxData[
 RowBox[{
  RowBox[{"samples", " ", "=", " ", 
   RowBox[{"Table", "[", 
    RowBox[{
     RowBox[{"RandomVariate", "[", 
      RowBox[{
       RowBox[{"NormalDistribution", "[", 
        RowBox[{"8", ",", "4"}], "]"}], ",", "7"}], "]"}], ",", " ", 
     RowBox[{"{", "10000", "}"}]}], "]"}]}], ";"}]], "Input",
 CellChangeTimes->{{3.603648400274222*^9, 3.603648516057166*^9}, {
   3.60364922599163*^9, 3.603649232646422*^9}, 3.603649264717815*^9, {
   3.60364947301793*^9, 3.6036494742340727`*^9}, {3.603649588845018*^9, 
   3.6036495898190193`*^9}, {3.603649889688712*^9, 3.603649891358737*^9}, {
   3.603658696026115*^9, 3.6036587165267572`*^9}, {3.6036587642587*^9, 
   3.603658765261672*^9}}],

Cell["\<\
How many of these samples have a spread of 12 or greater (i.e. 16 - 4)?\
\>", "Text",
 CellChangeTimes->{{3.603648575040612*^9, 3.6036486507855053`*^9}, {
  3.603650391389179*^9, 3.6036503936995163`*^9}, {3.603658591098394*^9, 
  3.603658593513796*^9}}],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"diffs", " ", "=", " ", 
  RowBox[{"Count", "[", 
   RowBox[{
    RowBox[{
     RowBox[{
      RowBox[{
       RowBox[{"Max", "[", "#", "]"}], " ", "-", " ", 
       RowBox[{"Min", "[", "#", "]"}]}], " ", "&"}], " ", "/@", " ", 
     "samples"}], ",", " ", 
    RowBox[{"x_", "/;", " ", 
     RowBox[{"x", " ", "\[GreaterEqual]", "  ", "12"}]}]}], "]"}]}]], "Input",\

 CellChangeTimes->{{3.6036486634401207`*^9, 3.60364869451022*^9}, {
  3.6036487393311653`*^9, 3.603648772312509*^9}, {3.603649372816327*^9, 
  3.6036493816242437`*^9}, {3.603649415017874*^9, 3.6036495425222473`*^9}, {
  3.603649575685713*^9, 3.603649577684188*^9}, {3.6036499048885717`*^9, 
  3.6036499080467987`*^9}, {3.603650355086727*^9, 3.603650363669067*^9}, {
  3.6036504077739573`*^9, 3.603650412621772*^9}, {3.603658601730348*^9, 
  3.6036586036854763`*^9}, {3.60365874594803*^9, 3.603658758758625*^9}}],

Cell[BoxData["3373"], "Output",
 CellChangeTimes->{{3.603649467849536*^9, 3.60364954366294*^9}, {
   3.603649579464593*^9, 3.6036496026031227`*^9}, {3.60364989782485*^9, 
   3.603649909460644*^9}, 3.6036503655573874`*^9, 3.60365041389046*^9, {
   3.603658607311885*^9, 3.6036586286001053`*^9}, {3.6036587045728693`*^9, 
   3.6036587694827557`*^9}, 3.6036719738655643`*^9, 3.603703699245101*^9, 
   3.6178115816760063`*^9, 3.6178154715039673`*^9}]
}, {2}]],

Cell["\<\
So what\[CloseCurlyQuote]s the chance that we see what we see given that the \
median value is 8 or higher? The answer is: \
\>", "Text",
 CellChangeTimes->{{3.603649013316176*^9, 3.603649048805827*^9}, {
  3.603649112852022*^9, 3.603649159629487*^9}, {3.60365861297968*^9, 
  3.603658614993579*^9}}],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"medianChance", " ", "=", " ", 
  RowBox[{
   RowBox[{"diffs", "/", "10000"}], " ", "//", "N"}]}]], "Input",
 CellChangeTimes->{{3.6036491692554197`*^9, 3.603649197262285*^9}, {
  3.603649257453619*^9, 3.603649276652894*^9}}],

Cell[BoxData["0.3373`"], "Output",
 CellChangeTimes->{
  3.603658631563796*^9, {3.603658709235713*^9, 3.603658723654685*^9}, 
   3.603658772449176*^9, 3.603671973919784*^9, 3.6037036992824717`*^9, 
   3.6178115816932783`*^9, 3.6178154715190372`*^9}]
}, {2}]],

Cell["\<\
So there\[CloseCurlyQuote]s around a 33% chance that our group\
\[CloseCurlyQuote]s median is 8 or above. That\[CloseCurlyQuote]s the best we \
can do with the sample we have, but at least it was something.\
\>", "Text",
 CellChangeTimes->{{3.603649285113802*^9, 3.6036492986304626`*^9}, {
  3.603649329176094*^9, 3.603649355983247*^9}, {3.60365042516398*^9, 
  3.6036504874617367`*^9}, {3.603658642257818*^9, 3.603658656816227*^9}, {
  3.603658779428812*^9, 3.60365878116265*^9}}]
}, Open  ]],

Cell[CellGroupData[{

Cell["\<\
Estimating Corruption Level - Using Small Samples to Make Large Reductions in \
Uncertainty\
\>", "Section",
 CellChangeTimes->{{3.6030330837502937`*^9, 3.603033087189273*^9}, {
  3.603566605182831*^9, 3.603566607329988*^9}, {3.603566681655808*^9, 
  3.6035666886955423`*^9}, {3.603566730034058*^9, 3.603566731262553*^9}, {
  3.603580072160612*^9, 3.603580090919792*^9}}],

Cell[TextData[{
 "We\[CloseCurlyQuote]re trying to assess the level of corruption in a \
particular government institution. There are only a few studies out there and \
data is hard to come by. Let\[CloseCurlyQuote]s measure corruption level in \
the same way we measure customer satisfaction. Suppose 100 people who have \
interacted with the institution. If 90% encountered one or more corrupt \
practices (assuming we\[CloseCurlyQuote]ve defined and listed the set of \
corrupt practices) we say the corruption level of the institution is 90%.\n\n\
Based on some background knowledge, we reckon that the institution\
\[CloseCurlyQuote]s corruption level is somewhere between 50% to 90%. It\
\[CloseCurlyQuote]s not below 50% and it\[CloseCurlyQuote]s very unlikely to \
be above 90%. Since we can\[CloseCurlyQuote]t yet distinguish if it\
\[CloseCurlyQuote]s 50% or 90%, we attribute the same probability of 0.2 to \
each level of corruption. \n\n",
 StyleBox["Decision Criterion: Take action when the corruption level is at or \
greater than 70%. \n",
  FontWeight->"Bold"],
 "\nWe\[CloseCurlyQuote]d like to use some data to get a bit more certain \
about our beliefs. How much can a 20-person poll (randomly selected, of \
course) reduce our uncertainty?\n\nWe begin by considering a virtual \
experiment. If the corruption level is indeed 90%, what\[CloseCurlyQuote]s \
the probability that in a poll of 20 people, 18 of them (i.e. 90%) will say \
they encountered corruption? We can simulate this."
}], "Text",
 CellChangeTimes->CompressedData["
1:eJxTTMoPSmViYGAQAWIQzdVxcaL7zVeOglIls0C0/qYL80B0/HvNxSD66Gfe
tyD6zvdmJg8gvVS4gRdE/2R+qQKiOSyE9EB0nGwGmJ62oa4VRK8xK+gE0ecF
d/aB6NfJMf0g2kTBdBuIZj108DyIznOpYPIE0n2GW5lB9IyjM21ANIeipAuI
/tHrUuwDpNc9qwfTGVYTy0H0yee320F00EGuSxlA+pjFPjDd9CyXPR9I/wku
5QHRKpe7BUB0woGNYJqFuaiwEEhrFN4C0zzHD6U0AWkXw0XpIFruZ102iF5U
PCUfRH+I+V4MouNml9eCaI2lqxRzv7xynBwqrQOiAcO5qpA=
  "]],

Cell[BoxData[
 RowBox[{
  RowBox[{
   RowBox[{"likelihood2", "[", 
    RowBox[{"popProb_", ",", " ", "sampleSize_"}], "]"}], ":=", " ", 
   RowBox[{"Module", "[", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{
       RowBox[{"popSize", " ", "=", " ", "10000"}], ",", "population", ",", 
       RowBox[{"nTrials", " ", "=", " ", "1000"}], ",", " ", 
       RowBox[{"hitValue", " ", "=", " ", "1"}], ",", "samples", ",", " ", 
       "counts", ",", " ", "hits", ",", " ", "likelys"}], "}"}], ",", 
     "\[IndentingNewLine]", 
     RowBox[{"(*", " ", 
      RowBox[{
      "Estimates", " ", "the", " ", "likelihood", " ", "of", " ", "a", " ", 
       "sample", " ", "of", " ", "size", " ", "sampleSize", " ", "returning", 
       " ", "nHits", " ", "from", " ", "a", " ", 
       RowBox[{"population", ".", " ", "The"}], " ", "likelihood", " ", "is", 
       " ", "estimated", " ", "over", " ", 
       RowBox[{"nTrials", "."}]}], " ", "*)"}], "\[IndentingNewLine]", 
     RowBox[{
      RowBox[{"population", " ", "=", " ", 
       RowBox[{"BernoulliDistribution", "[", "popProb", "]"}]}], ";", 
      "\[IndentingNewLine]", 
      RowBox[{"samples", " ", "=", " ", 
       RowBox[{"Table", "[", 
        RowBox[{
         RowBox[{"RandomChoice", "[", 
          RowBox[{
           RowBox[{"RandomVariate", "[", 
            RowBox[{"population", ",", " ", "popSize"}], "]"}], ",", " ", 
           "sampleSize"}], "]"}], ",", " ", 
         RowBox[{"{", "nTrials", "}"}]}], "]"}]}], ";", "\[IndentingNewLine]", 
      RowBox[{"(*", " ", 
       RowBox[{
        RowBox[{
        "For", " ", "each", " ", "element", " ", "in", " ", "sample"}], ",", 
        " ", 
        RowBox[{
        "count", " ", "the", " ", "number", " ", "of", " ", "hits"}]}], " ", 
       "*)"}], "\[IndentingNewLine]", 
      RowBox[{"counts", " ", "=", " ", 
       RowBox[{
        RowBox[{
         RowBox[{"Count", "[", 
          RowBox[{"#", ",", " ", "hitValue"}], "]"}], " ", "&"}], " ", "/@", 
        " ", "samples"}]}], ";", "\[IndentingNewLine]", 
      RowBox[{"(*", " ", 
       RowBox[{
        RowBox[{
        "When", " ", "the", " ", "sample", " ", "size", " ", "is", " ", "N"}],
         ",", " ", "theoretically", ",", " ", 
        RowBox[{
        "the", " ", "number", " ", "of", " ", "counts", " ", "of", " ", "the",
          " ", "hit", " ", "value", " ", "can", " ", "be", " ", "anywhere", 
         " ", "from", " ", "0", " ", "to", " ", 
         RowBox[{"N", "."}]}]}], " ", "*)"}], "\[IndentingNewLine]", 
      RowBox[{"(*", " ", 
       RowBox[{
        RowBox[{
        "Find", " ", "the", " ", "number", " ", "of", " ", "times", " ", "we",
          " ", "have", " ", "0", " ", "hits"}], ",", " ", 
        RowBox[{"1", " ", "hit"}], ",", " ", 
        RowBox[{"2", " ", "hits"}], ",", " ", "...", ",", " ", 
        RowBox[{"N", " ", "hits"}]}], " ", "*)"}], "\[IndentingNewLine]", 
      RowBox[{"hits", " ", "=", " ", 
       RowBox[{
        RowBox[{
         RowBox[{"Count", "[", 
          RowBox[{"counts", ",", " ", "#"}], "]"}], "&"}], " ", "/@", " ", 
        RowBox[{"Range", "[", "sampleSize", "]"}]}]}], ";", 
      "\[IndentingNewLine]", 
      RowBox[{"likelys", " ", "=", " ", 
       RowBox[{
        RowBox[{"hits", "/", "nTrials"}], " ", "//", "N"}]}], ";", 
      "\[IndentingNewLine]", 
      RowBox[{"(*", " ", 
       RowBox[{
        RowBox[{
        "To", " ", "make", " ", "the", " ", "ouput", " ", "more", " ", 
         "readable"}], ",", " ", 
        RowBox[{
        "render", " ", "it", " ", "in", " ", "the", " ", "form", " ", 
         RowBox[{"{", 
          RowBox[{
           RowBox[{"{", 
            RowBox[{"1", ",", "p1"}], "}"}], ",", 
           RowBox[{"{", 
            RowBox[{"2", ",", " ", "p2"}], "}"}], ",", " ", 
           RowBox[{"...", " ", 
            RowBox[{"{", 
             RowBox[{"sampleSize", ",", " ", "psampleSize"}], "}"}]}]}], 
          "}"}], " ", "where", " ", "the", " ", "first", " ", "element", " ", 
         "is", " ", "the", " ", "number", " ", "of", " ", "hits", " ", "and", 
         " ", "the", " ", "second", " ", "element", " ", "is", " ", "the", 
         " ", "likelihood", " ", "of", " ", "getting", " ", "this", " ", 
         "many", " ", 
         RowBox[{"hits", "."}]}]}], " ", "*)"}], "\[IndentingNewLine]", 
      RowBox[{"Transpose", "[", 
       RowBox[{"{", 
        RowBox[{
         RowBox[{"Range", "[", "sampleSize", "]"}], ",", "likelys"}], "}"}], 
       "]"}]}]}], "\[IndentingNewLine]", "]"}]}], ";"}]], "Input",
 CellChangeTimes->{{3.603033430593614*^9, 3.60303377382236*^9}, {
   3.603033874192975*^9, 3.603033939447753*^9}, {3.603033989422014*^9, 
   3.603034128937711*^9}, {3.6030341882408867`*^9, 3.603034215468927*^9}, {
   3.603034247534075*^9, 3.6030343342815113`*^9}, {3.603034379619473*^9, 
   3.603034421761476*^9}, {3.6035669757040443`*^9, 3.60356698655799*^9}, {
   3.603573224075266*^9, 3.6035732390654716`*^9}, 3.603573536421273*^9, {
   3.6035736519962683`*^9, 3.603573652394985*^9}, {3.6035749296908293`*^9, 
   3.6035749301214523`*^9}, {3.603574962576243*^9, 3.603575011572214*^9}, {
   3.603575043680047*^9, 3.603575111676058*^9}, {3.603575269849655*^9, 
   3.6035752911842823`*^9}, {3.60357534902561*^9, 3.603575374576515*^9}, {
   3.603575406808647*^9, 3.603575431323558*^9}, {3.603575490312395*^9, 
   3.603575505096705*^9}, {3.603575670528998*^9, 3.603575673671646*^9}, {
   3.603575729738001*^9, 3.603575743169359*^9}, {3.603575792976317*^9, 
   3.6035758000741053`*^9}, {3.603575834692357*^9, 3.603575857895051*^9}, {
   3.603575890975541*^9, 3.603575899603608*^9}, {3.6035759836342916`*^9, 
   3.603575985913*^9}, 3.603576066979948*^9, {3.6035761636540337`*^9, 
   3.603576169267456*^9}, {3.6035762195949574`*^9, 3.603576299449418*^9}, {
   3.603576436969431*^9, 3.603576510974743*^9}, 3.603577578114324*^9, 
   3.603578240079946*^9, 3.603579459502727*^9}],

Cell["\<\
At the risk of not rolling our own, likelihood2 is also given by the Binomial \
Distribution with n = 20 and p = 0.9\
\>", "Text",
 CellChangeTimes->{{3.666117276780789*^9, 3.666117337986579*^9}}],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"Range", "[", 
  RowBox[{"1", ",", "20"}], "]"}]], "Input",
 CellChangeTimes->{{3.666117492232872*^9, 3.6661174973472853`*^9}}],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{
  "1", ",", "2", ",", "3", ",", "4", ",", "5", ",", "6", ",", "7", ",", "8", 
   ",", "9", ",", "10", ",", "11", ",", "12", ",", "13", ",", "14", ",", "15",
    ",", "16", ",", "17", ",", "18", ",", "19", ",", "20"}], "}"}]], "Output",\

 CellChangeTimes->{3.666117498024438*^9}]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"likelihood3", " ", "=", " ", 
  RowBox[{
   RowBox[{
    RowBox[{"Probability", "[", 
     RowBox[{
      RowBox[{"x", " ", "\[Equal]", " ", "#"}], ",", 
      RowBox[{"x", " ", "\[Distributed]", 
       RowBox[{"BinomialDistribution", "[", 
        RowBox[{"20", ",", "0.9"}], "]"}]}]}], "]"}], " ", "&"}], " ", "/@", 
   " ", 
   RowBox[{"Range", "[", 
    RowBox[{"1", ",", "20"}], "]"}], " "}]}]], "Input",
 CellChangeTimes->{{3.666117343591592*^9, 3.6661173901772213`*^9}, {
  3.666117437444808*^9, 3.6661174707936077`*^9}, {3.666117518252946*^9, 
  3.666117520234747*^9}}],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{
  "1.799999999999989`*^-18", ",", "1.5389999999999938`*^-16", ",", 
   "8.310599999999983`*^-15", ",", "3.1788044999999865`*^-13", ",", 
   "9.154956959999962`*^-12", ",", "2.0598653159999982`*^-10", ",", 
   "3.707757568799986`*^-9", ",", "5.4225954443699406`*^-8", ",", 
   "6.507114533243984`*^-7", ",", "6.442043387911565`*^-6", ",", 
   "0.000052707627719276246`", ",", "0.000355776487105113`", ",", 
   "0.001970454390120641`", ",", "0.008867044755542841`", ",", 
   "0.03192136111995439`", ",", "0.08977882814987168`", ",", 
   "0.1901198713761989`", ",", "0.2851798070642983`", ",", 
   "0.2701703435345985`", ",", "0.12157665459056931`"}], "}"}]], "Output",
 CellChangeTimes->{3.666117472203216*^9, 3.6661175230782757`*^9}]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"ListPlot", "[", "likelihood3", "]"}]], "Input",
 CellChangeTimes->{{3.6661175740033493`*^9, 3.666117583372964*^9}}],

Cell[BoxData[
 GraphicsBox[{{}, {{}, 
    {RGBColor[0.368417, 0.506779, 0.709798], PointSize[0.012833333333333334`],
      AbsoluteThickness[1.6], PointBox[CompressedData["
1:eJxTTMoPSmViYGAQAWIQDQEf7FOuXbNRnOVgAxVwKGdyT3+huwzK53CQf6Us
vmcbky2EL+Bw+u2KyzlxYVC+iIM5p0TECcUlUL6Eg8DZh7sb/d9A+TIOM9ji
Phfe1LeD8BUcznws1jgkkwvlKzn0fg2bN/HqUihfxSHOTDVdnPU2lK/mcJgv
zcdnEbc9hK/hECZTlvAhwBzK13I4KGy3NFwlAcrXcVC49nTmI40mKF/PwWS5
tMr/8AVQvoGD3ONjp/b93gblGzo4bPkgdDP0BJRv5KDfbnIuyeESlG/scFix
tLfC6yKUb+LwPT/n9FL5/fYA8NhS8w==
      "]]}, {}}, {}},
  AspectRatio->NCache[GoldenRatio^(-1), 0.6180339887498948],
  Axes->{True, True},
  AxesLabel->{None, None},
  AxesOrigin->{0, 0},
  DisplayFunction->Identity,
  Frame->{{False, False}, {False, False}},
  FrameLabel->{{None, None}, {None, None}},
  FrameTicks->{{Automatic, Automatic}, {Automatic, Automatic}},
  GridLines->{None, None},
  GridLinesStyle->Directive[
    GrayLevel[0.5, 0.4]],
  Method->{},
  PlotRange->{{0., 20.}, {0, 0.2851798070642983}},
  PlotRangeClipping->True,
  PlotRangePadding->{{
     Scaled[0.02], 
     Scaled[0.02]}, {
     Scaled[0.02], 
     Scaled[0.05]}},
  Ticks->{Automatic, Automatic}]], "Output",
 CellChangeTimes->{3.666117584093403*^9}]
}, Open  ]],

Cell["\<\
Here is the result of such a simulation. In a poll of 20 people it lists the \
probability of 1 person saying he or she encountered corruption, 2 people \
saying that they did, 3 people saying that they did, and so on all the way to \
all 20 people saying they encountered corruption -- given that the real rate \
of corruption is 90%.\
\>", "Text",
 CellChangeTimes->{{3.603580559956512*^9, 3.603580564585593*^9}, {
  3.603580601694537*^9, 3.6035807151343613`*^9}, {3.603698700474353*^9, 
  3.603698706791237*^9}}],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"likelihood2", "[", 
  RowBox[{"0.9", ",", "20"}], "]"}]], "Input",
 CellChangeTimes->{{3.603577856553224*^9, 3.603577865781782*^9}}],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{
   RowBox[{"{", 
    RowBox[{"1", ",", "0.`"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"2", ",", "0.`"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"3", ",", "0.`"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"4", ",", "0.`"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"5", ",", "0.`"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"6", ",", "0.`"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"7", ",", "0.`"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"8", ",", "0.`"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"9", ",", "0.`"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"10", ",", "0.`"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"11", ",", "0.`"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"12", ",", "0.002`"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"13", ",", "0.001`"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"14", ",", "0.013`"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"15", ",", "0.043`"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"16", ",", "0.081`"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"17", ",", "0.204`"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"18", ",", "0.296`"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"19", ",", "0.26`"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"20", ",", "0.1`"}], "}"}]}], "}"}]], "Output",
 CellChangeTimes->{{3.603577867362772*^9, 3.603577888464116*^9}, {
   3.603578250284005*^9, 3.603578274359002*^9}, 3.603579465440361*^9, 
   3.603643868790409*^9, 3.603671974162627*^9, 3.603703699614524*^9, 
   3.617811581933041*^9, 3.6178154717659817`*^9}]
}, {2}]],

Cell["And here is a plot of that simulation.", "Text",
 Evaluatable->True,
 CellChangeTimes->{{3.603580731127408*^9, 3.6035807405653753`*^9}}],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"cp9s20", " ", "=", " ", 
  RowBox[{"ListLinePlot", "[", 
   RowBox[{
    RowBox[{"Tooltip", "[", 
     RowBox[{"likelihood2", "[", 
      RowBox[{"0.9", ",", "20"}], "]"}], "]"}], ",", " ", 
    RowBox[{"PlotMarkers", "\[Rule]", "Automatic"}], ",", 
    RowBox[{"GridLines", "\[Rule]", " ", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"Range", "[", "20", "]"}], ",", " ", 
       RowBox[{"Table", "[", 
        RowBox[{"i", ",", 
         RowBox[{"{", 
          RowBox[{"i", ",", "0", ",", " ", "0.35", ",", " ", "0.05"}], 
          "}"}]}], "]"}]}], "}"}]}], ",", " ", 
    RowBox[{"Ticks", " ", "\[Rule]", " ", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"Range", "[", "20", "]"}], ",", " ", 
       RowBox[{"Table", "[", 
        RowBox[{"i", ",", 
         RowBox[{"{", 
          RowBox[{"i", ",", "0", ",", " ", "0.35", ",", " ", "0.05"}], 
          "}"}]}], "]"}]}], "}"}]}], ",", 
    RowBox[{"PlotRange", "\[Rule]", " ", 
     RowBox[{"{", 
      RowBox[{"0", ",", "0.35"}], "}"}]}], ",", " ", 
    RowBox[{"ImageSize", "\[Rule]", "600"}], ",", " ", 
    RowBox[{"AxesLabel", "\[Rule]", 
     RowBox[{"{", 
      RowBox[{
      "\"\<# corruption reports\\namongst 20 respondents\>\"", ",", " ", 
       "\"\<Probability of Result\>\""}], "}"}]}], ",", " ", 
    RowBox[{"PlotLabel", "\[Rule]", "\"\<Actual Corruption = 90%\>\""}]}], 
   "]"}]}]], "Input",
 CellChangeTimes->{{3.603575440612673*^9, 3.60357545138275*^9}, {
  3.603575518665625*^9, 3.603575546066465*^9}, {3.6035765456562557`*^9, 
  3.60357655263305*^9}, {3.603576594680637*^9, 3.603576666379952*^9}, {
  3.60357678736375*^9, 3.6035768124905567`*^9}, {3.603578169612659*^9, 
  3.6035781957057257`*^9}, {3.617814876763105*^9, 3.617814907192267*^9}, {
  3.617814944843854*^9, 3.6178149830051737`*^9}, {3.617815027526516*^9, 
  3.6178150794230022`*^9}, {3.617815575393669*^9, 3.617815661525249*^9}, {
  3.6178157113025208`*^9, 3.6178158967173023`*^9}, {3.617816053114992*^9, 
  3.617816085770718*^9}}],

Cell[BoxData[
 GraphicsBox[{{}, {{{}, {}, 
     {RGBColor[0.368417, 0.506779, 0.709798], PointSize[
      0.019444444444444445`], AbsoluteThickness[1.6], LineBox[CompressedData["

1:eJxTTMoPSmViYGAQAWIQDQEf7BlQgQMqlwONL4DGF0HjS6DxZdD4Cmh8JTS+
ChpfDY2v4fBn5cdLvkkBUHdrOfyqy9pTMjkDyteByhdA+XpQ+RVQvoFDkkCE
5ZYT26B8Q4d986X076ocg/KNHPoPfdWI6b8E5Rs7OCU8vaB0+yKUb+KguKEo
Y+LbPfYASiowmQ==
       "]]}}, {
     {RGBColor[0.368417, 0.506779, 0.709798], PointSize[
      0.019444444444444445`], AbsoluteThickness[1.6], 
      GeometricTransformationBox[InsetBox[
        StyleBox["\<\"\[FilledCircle]\"\>",
         StripOnInput->False,
         FontSize->8.96], {0., 0.}], CompressedData["
1:eJxTTMoPSmVmYGAQAWJGIGZigIEP9gyowAGVy4HGF0Dji6DxJdD4Mmh8BTS+
EhpfBY2vhsbXcPiz8uMl36QAqLu1HH7VZe0pmZwB5etA5QugfD2o/Aoo38Ah
SSDCcsuJbVC+ocO++VL6d1WOQflGDv2HvmrE9F+C8o0dnBKeXlC6fRHKN3FQ
3FCUMfHtHnsAU8Iwmw==
       "]]}, {}}, {
     TagBox[
      TooltipBox[
       {Opacity[0.], PointBox[{1., 0.}]},
       RowBox[{"{", 
         RowBox[{"1.`", ",", "0.`"}], "}"}]],
      Annotation[#, {1., 0.}, "Tooltip"]& ], 
     TagBox[
      TooltipBox[
       {Opacity[0.], PointBox[{2., 0.}]},
       RowBox[{"{", 
         RowBox[{"2.`", ",", "0.`"}], "}"}]],
      Annotation[#, {2., 0.}, "Tooltip"]& ], 
     TagBox[
      TooltipBox[
       {Opacity[0.], PointBox[{3., 0.}]},
       RowBox[{"{", 
         RowBox[{"3.`", ",", "0.`"}], "}"}]],
      Annotation[#, {3., 0.}, "Tooltip"]& ], 
     TagBox[
      TooltipBox[
       {Opacity[0.], PointBox[{4., 0.}]},
       RowBox[{"{", 
         RowBox[{"4.`", ",", "0.`"}], "}"}]],
      Annotation[#, {4., 0.}, "Tooltip"]& ], 
     TagBox[
      TooltipBox[
       {Opacity[0.], PointBox[{5., 0.}]},
       RowBox[{"{", 
         RowBox[{"5.`", ",", "0.`"}], "}"}]],
      Annotation[#, {5., 0.}, "Tooltip"]& ], 
     TagBox[
      TooltipBox[
       {Opacity[0.], PointBox[{6., 0.}]},
       RowBox[{"{", 
         RowBox[{"6.`", ",", "0.`"}], "}"}]],
      Annotation[#, {6., 0.}, "Tooltip"]& ], 
     TagBox[
      TooltipBox[
       {Opacity[0.], PointBox[{7., 0.}]},
       RowBox[{"{", 
         RowBox[{"7.`", ",", "0.`"}], "}"}]],
      Annotation[#, {7., 0.}, "Tooltip"]& ], 
     TagBox[
      TooltipBox[
       {Opacity[0.], PointBox[{8., 0.}]},
       RowBox[{"{", 
         RowBox[{"8.`", ",", "0.`"}], "}"}]],
      Annotation[#, {8., 0.}, "Tooltip"]& ], 
     TagBox[
      TooltipBox[
       {Opacity[0.], PointBox[{9., 0.}]},
       RowBox[{"{", 
         RowBox[{"9.`", ",", "0.`"}], "}"}]],
      Annotation[#, {9., 0.}, "Tooltip"]& ], 
     TagBox[
      TooltipBox[
       {Opacity[0.], PointBox[{10., 0.}]},
       RowBox[{"{", 
         RowBox[{"10.`", ",", "0.`"}], "}"}]],
      Annotation[#, {10., 0.}, "Tooltip"]& ], 
     TagBox[
      TooltipBox[
       {Opacity[0.], PointBox[{11., 0.}]},
       RowBox[{"{", 
         RowBox[{"11.`", ",", "0.`"}], "}"}]],
      Annotation[#, {11., 0.}, "Tooltip"]& ], 
     TagBox[
      TooltipBox[
       {Opacity[0.], PointBox[{12., 0.001}]},
       RowBox[{"{", 
         RowBox[{"12.`", ",", "0.001`"}], "}"}]],
      Annotation[#, {12., 0.001}, "Tooltip"]& ], 
     TagBox[
      TooltipBox[
       {Opacity[0.], PointBox[{13., 0.003}]},
       RowBox[{"{", 
         RowBox[{"13.`", ",", "0.003`"}], "}"}]],
      Annotation[#, {13., 0.003}, "Tooltip"]& ], 
     TagBox[
      TooltipBox[
       {Opacity[0.], PointBox[{14., 0.004}]},
       RowBox[{"{", 
         RowBox[{"14.`", ",", "0.004`"}], "}"}]],
      Annotation[#, {14., 0.004}, "Tooltip"]& ], 
     TagBox[
      TooltipBox[
       {Opacity[0.], PointBox[{15., 0.048}]},
       RowBox[{"{", 
         RowBox[{"15.`", ",", "0.048`"}], "}"}]],
      Annotation[#, {15., 0.048}, "Tooltip"]& ], 
     TagBox[
      TooltipBox[
       {Opacity[0.], PointBox[{16., 0.089}]},
       RowBox[{"{", 
         RowBox[{"16.`", ",", "0.089`"}], "}"}]],
      Annotation[#, {16., 0.089}, "Tooltip"]& ], 
     TagBox[
      TooltipBox[
       {Opacity[0.], PointBox[{17., 0.173}]},
       RowBox[{"{", 
         RowBox[{"17.`", ",", "0.173`"}], "}"}]],
      Annotation[#, {17., 0.173}, "Tooltip"]& ], 
     TagBox[
      TooltipBox[
       {Opacity[0.], PointBox[{18., 0.29}]},
       RowBox[{"{", 
         RowBox[{"18.`", ",", "0.29`"}], "}"}]],
      Annotation[#, {18., 0.29}, "Tooltip"]& ], 
     TagBox[
      TooltipBox[
       {Opacity[0.], PointBox[{19., 0.279}]},
       RowBox[{"{", 
         RowBox[{"19.`", ",", "0.279`"}], "}"}]],
      Annotation[#, {19., 0.279}, "Tooltip"]& ], 
     TagBox[
      TooltipBox[
       {Opacity[0.], PointBox[{20., 0.113}]},
       RowBox[{"{", 
         RowBox[{"20.`", ",", "0.113`"}], "}"}]],
      Annotation[#, {20., 0.113}, "Tooltip"]& ]}}, {}},
  AspectRatio->NCache[GoldenRatio^(-1), 0.6180339887498948],
  Axes->{True, True},
  AxesLabel->{
    FormBox[
    "\"# corruption reports\\namongst 20 respondents\"", TraditionalForm], 
    FormBox["\"Probability of Result\"", TraditionalForm]},
  AxesOrigin->{0, 0},
  DisplayFunction->Identity,
  Frame->{{False, False}, {False, False}},
  FrameLabel->{{None, None}, {None, None}},
  FrameTicks->{{Automatic, Automatic}, {Automatic, Automatic}},
  GridLines->{{1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 
    19, 20}, {0., 0.05, 0.1, 0.15000000000000002`, 0.2, 0.25, 
    0.30000000000000004`, 0.35000000000000003`}},
  GridLinesStyle->Directive[
    GrayLevel[0.5, 0.4]],
  ImageSize->600,
  Method->{},
  PlotLabel->FormBox["\"Actual Corruption = 90%\"", TraditionalForm],
  PlotRange->{{0, 20.}, {0, 0.35}},
  PlotRangeClipping->True,
  PlotRangePadding->{{
     Scaled[0.02], 
     Scaled[0.02]}, {0, 0}},
  Ticks->{{{1, 
      FormBox["1", TraditionalForm]}, {2, 
      FormBox["2", TraditionalForm]}, {3, 
      FormBox["3", TraditionalForm]}, {4, 
      FormBox["4", TraditionalForm]}, {5, 
      FormBox["5", TraditionalForm]}, {6, 
      FormBox["6", TraditionalForm]}, {7, 
      FormBox["7", TraditionalForm]}, {8, 
      FormBox["8", TraditionalForm]}, {9, 
      FormBox["9", TraditionalForm]}, {10, 
      FormBox["10", TraditionalForm]}, {11, 
      FormBox["11", TraditionalForm]}, {12, 
      FormBox["12", TraditionalForm]}, {13, 
      FormBox["13", TraditionalForm]}, {14, 
      FormBox["14", TraditionalForm]}, {15, 
      FormBox["15", TraditionalForm]}, {16, 
      FormBox["16", TraditionalForm]}, {17, 
      FormBox["17", TraditionalForm]}, {18, 
      FormBox["18", TraditionalForm]}, {19, 
      FormBox["19", TraditionalForm]}, {20, 
      FormBox["20", TraditionalForm]}}, {{0., 
      FormBox["0.`", TraditionalForm]}, {0.05, 
      FormBox["0.05`", TraditionalForm]}, {0.1, 
      FormBox["0.1`", TraditionalForm]}, {0.15000000000000002`, 
      FormBox["0.15000000000000002`", TraditionalForm]}, {0.2, 
      FormBox["0.2`", TraditionalForm]}, {0.25, 
      FormBox["0.25`", TraditionalForm]}, {0.30000000000000004`, 
      FormBox["0.30000000000000004`", TraditionalForm]}, {
     0.35000000000000003`, 
      FormBox["0.35000000000000003`", TraditionalForm]}}}]], "Output",
 CellChangeTimes->{{3.603576668020062*^9, 3.6035767033942757`*^9}, 
   3.603576815058175*^9, {3.6035774991419067`*^9, 3.603577504738339*^9}, {
   3.603577587216627*^9, 3.603577595429229*^9}, {3.603578175154402*^9, 
   3.603578210056554*^9}, 3.603578281109571*^9, 3.603579471510819*^9, 
   3.6036438697800627`*^9, 3.603671974399508*^9, 3.603703700641622*^9, 
   3.617811582353191*^9, 3.617814175729323*^9, 3.617814909355318*^9, 
   3.617814949403401*^9, 3.617814988896517*^9, 3.617815082214056*^9, 
   3.6178154720581284`*^9, {3.6178155903543787`*^9, 3.617815628362321*^9}, {
   3.6178157715812893`*^9, 3.617815822365695*^9}, {3.6178158569775133`*^9, 
   3.617815865663539*^9}, 3.617815897864709*^9, 3.6178160895615807`*^9}]
}, {2}]],

Cell[BoxData[
 RowBox[{
  RowBox[{"ps20", " ", "=", " ", 
   RowBox[{
    RowBox[{
     RowBox[{"likelihood2", "[", 
      RowBox[{"#", ",", "20"}], "]"}], "&"}], " ", "/@", " ", 
    RowBox[{"Range", "[", 
     RowBox[{"0.9", ",", "0.5", ",", 
      RowBox[{"-", "0.1"}]}], "]"}]}]}], ";"}]], "Input",
 CellChangeTimes->{{3.603576834887753*^9, 3.6035768938564653`*^9}, {
  3.603577091919729*^9, 3.6035770967861977`*^9}, {3.6035771304454536`*^9, 
  3.603577188564611*^9}, {3.603577271959156*^9, 3.603577277920435*^9}, {
  3.603577316119583*^9, 3.603577323229433*^9}, {3.603580922092516*^9, 
  3.603580930256997*^9}}],

Cell["\<\
And here are the results of such a simulations for when the corruption level \
is really 90%, 80%, and so on all the way down to 50%. So, if the real level \
of corruption is 50%, how likely is it for 10 out of the 20 people sampled to \
say they encountered corruption? You can read it off the diagram below - it\
\[CloseCurlyQuote]s somewhere around 0.17 or thereabouts. (It\
\[CloseCurlyQuote]s much lower than you thought, isn\[CloseCurlyQuote]t it?)\
\>", "Text",
 CellChangeTimes->{{3.6035807574057703`*^9, 3.603580904159511*^9}, {
  3.603581011677732*^9, 3.603581017011903*^9}, {3.60358110691957*^9, 
  3.6035811500022917`*^9}, {3.603658943299807*^9, 3.603658960985138*^9}}],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"cps20", " ", "=", " ", 
  RowBox[{"ListLinePlot", "[", 
   RowBox[{
    RowBox[{"Tooltip", "[", "ps20", "]"}], ",", " ", 
    RowBox[{"PlotMarkers", "\[Rule]", "Automatic"}], ",", 
    RowBox[{"GridLines", " ", "\[Rule]", " ", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"Range", "[", "20", "]"}], ",", " ", 
       RowBox[{"Table", "[", 
        RowBox[{"i", ",", " ", 
         RowBox[{"{", 
          RowBox[{"i", ",", "0", ",", "0.35", ",", " ", "0.05"}], "}"}]}], 
        "]"}]}], "}"}]}], ",", 
    RowBox[{"Ticks", "\[Rule]", " ", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"Range", "[", "20", "]"}], ",", " ", 
       RowBox[{"Table", "[", 
        RowBox[{"i", ",", " ", 
         RowBox[{"{", 
          RowBox[{"i", ",", "0", ",", "0.35", ",", " ", "0.05"}], "}"}]}], 
        "]"}]}], "}"}]}], ",", 
    RowBox[{"PlotRange", "\[Rule]", " ", 
     RowBox[{"{", 
      RowBox[{"0", ",", "0.35"}], "}"}]}], ",", " ", 
    RowBox[{"PlotLegends", "\[Rule]", 
     RowBox[{"{", 
      RowBox[{
      "\"\<90%\>\"", ",", " ", "\"\<80%\>\"", ",", " ", "\"\<70%\>\"", ",", 
       " ", "\"\<60%\>\"", ",", " ", "\"\<50%\>\""}], "}"}]}], ",", " ", 
    RowBox[{"ImageSize", "\[Rule]", " ", "600"}], ",", " ", 
    RowBox[{"AxesLabel", "\[Rule]", 
     RowBox[{"{", 
      RowBox[{
      "\"\<# corruption reports\\namongst 20 respondents\>\"", ",", " ", 
       "\"\<Probability of Result\>\""}], "}"}]}], ",", " ", 
    RowBox[{
    "PlotLabel", "\[Rule]", 
     "\"\<Actual Corruption Varying \\nfrom 90% to 50%\>\""}]}], 
   "]"}]}]], "Input",
 CellChangeTimes->{{3.603577217367872*^9, 3.603577229753718*^9}, {
  3.6035772942894363`*^9, 3.603577383371305*^9}, {3.603577456529807*^9, 
  3.6035774658403187`*^9}, {3.603580983426867*^9, 3.603580986808817*^9}, {
  3.617815415309369*^9, 3.6178154503023653`*^9}, {3.617816139613093*^9, 
  3.6178161847044992`*^9}, {3.617816222334022*^9, 3.617816272029428*^9}}],

Cell[BoxData[
 TemplateBox[{GraphicsBox[{{}, {{{}, {}, {
        Hue[0.67, 0.6, 0.6], 
        Directive[
         PointSize[0.01388888888888889], 
         RGBColor[0.368417, 0.506779, 0.709798], 
         AbsoluteThickness[1.6]], 
        LineBox[CompressedData["
1:eJxTTMoPSmViYGAQAWIQDQEf7BlQgQMqlwONL4DGF0HjS6DxZdD4Cmh8JTS+
ChpfDY2vgcbXcviz8uMl36QAqD90oPwGKF/P4U3gDrnW1wuhfAMH7Xaxm+e+
b4byDR3ctn3+e6XiJJRv5PD0gtLtn3WXoHxjqP6LUL6Jg2ZM/6GvGnvsAbJC
L3U=
         "]]}, {
        Hue[0.9060679774997897, 0.6, 0.6], 
        Directive[
         PointSize[0.01388888888888889], 
         RGBColor[0.880722, 0.611041, 0.142051], 
         AbsoluteThickness[1.6]], 
        LineBox[CompressedData["
1:eJxTTMoPSmViYGAQAWIQDQEf7BlQgQMqlwONL4DGF0HjS6DxZdD4Cmh8JYc/
Kz9e8k0KgLpDxeFXXdaekskZUL4alF8B5Ws43Dz3Pfjx0tlQvpYD1/XFBbZc
y6F8HYeEpxeUbv/cB+XrOYClrx+G8g0ceqfnCTUfOAXlGzoIRFhuOVF2Dso3
cgBz9+2H8o0dMia+rbE3XQflm0Dd02EPAKzdPRU=
         "]]}, {
        Hue[0.1421359549995791, 0.6, 0.6], 
        Directive[
         PointSize[0.01388888888888889], 
         RGBColor[0.560181, 0.691569, 0.194885], 
         AbsoluteThickness[1.6]], 
        LineBox[CompressedData["
1:eJxTTMoPSmViYGAQAWIQDQEf7BlQgQMqlwONL4DGF0HjS6DxZRz+rPx4yTcp
AGqPgkPlSzVDjjU1UL6SQ7XIOveHVS1QvgpUfg6Ur+awpMCW6/riDVC+hgPH
GpmoFOv9UL6Wg3zr68AdckehfB2HoB1yQJETUL6ew+GvGjH9h2DyBlDzDkD5
hg6Pl84+orBhE5Rv5CDJEsanu2kulG+M5j4TuP8AtUc6Gw==
         "]]}, {
        Hue[0.37820393249936934`, 0.6, 0.6], 
        Directive[
         PointSize[0.01388888888888889], 
         RGBColor[0.922526, 0.385626, 0.209179], 
         AbsoluteThickness[1.6]], 
        LineBox[CompressedData["
1:eJxTTMoPSmViYGAQAWIQDQEf7BlQgQMqlwONL+DwZ+XHS75JCVB9ImjyElD5
Aqi8jEO1yDr3h1UtUL6Cwy5PHibt9mVQvpKDS3fO898rN0L5Kg4bijImvq3Z
D+WrOVz2TRKIsDwC5Ws45As1Hzi18CiUr+UQBzbwOJSv42C55UTZvvm7oHw9
qP4tUL6Bg/V9/97peYugfEOHX3VZe0omd0D5RlB+BZRvDOVnQPkmcP8CAA/e
RcE=
         "]]}, {
        Hue[0.6142719099991583, 0.6, 0.6], 
        Directive[
         PointSize[0.01388888888888889], 
         RGBColor[0.528488, 0.470624, 0.701351], 
         AbsoluteThickness[1.6]], 
        LineBox[CompressedData["
1:eJxTTMoPSmViYGAQAWIQDQEf7BlQgcOflR8v+SYFQMU5HFClBRx+1WXtKZlc
AZUXcdjlycOk3d4G5Us4cF1fXGDLtRzKl3E4vdB12+e/W6B8BYeDp0ACe6F8
JYf7/r3T84QOQ/kqDv+uVLxUMzwB5as5GIMBTF7DIcJyy4myffuhfC0Ha7AB
m6B8HSh/EZSv57BDrvV14I4+KN8AzX+GaHwjNP8ao8mbwOUBeh9L/A==
         "]]}}, {{
        Hue[0.67, 0.6, 0.6], 
        Directive[
         PointSize[0.01388888888888889], 
         RGBColor[0.368417, 0.506779, 0.709798], 
         AbsoluteThickness[1.6]], 
        GeometricTransformationBox[
         InsetBox[
          BoxData[
           FormBox[
            StyleBox[
            "\"\[FilledCircle]\"", FontSize -> 8.96, StripOnInput -> False], 
            TraditionalForm]], {0., 0.}], CompressedData["
1:eJxTTMoPSmVmYGAQAWJGIGZigIEP9gyowAGVy4HGF0Dji6DxJdD4Mmh8BTS+
EhpfBY2vhsbXQONrOfxZ+fGSb1IA1B86UH4DlK/n8CZwh1zr64VQvoGDdrvY
zXPfN0P5hg5u2z7/vVJxEso3cnh6Qen2z7pLUL4xVP9FKN/EQTOm/9BXjT32
ALvaL3c=
         "]]}, {
        Hue[0.9060679774997897, 0.6, 0.6], 
        Directive[
         PointSize[0.01388888888888889], 
         RGBColor[0.880722, 0.611041, 0.142051], 
         AbsoluteThickness[1.6]], 
        GeometricTransformationBox[
         InsetBox[
          BoxData[
           FormBox[
            StyleBox[
            "\"\[FilledSquare]\"", FontSize -> 8.96, StripOnInput -> False], 
            TraditionalForm]], {0., 0.}], CompressedData["
1:eJxTTMoPSmVmYGAQAWJGIGZigIEP9gyowAGVy4HGF0Dji6DxJdD4Mmh8BTS+
ksOflR8v+SYFQN2h4vCrLmtPyeQMKF8Nyq+A8jUcbp77Hvx46WwoX8uB6/ri
Aluu5VC+jkPC0wtKt3/ug/L1HMDS1w9D+QYOvdPzhJoPnILyDR0EIiy3nCg7
B+UbOYC5+/ZD+cYOGRPf1tibroPyTaDu6bAHALZ1PRc=
         "]]}, {
        Hue[0.1421359549995791, 0.6, 0.6], 
        Directive[
         PointSize[0.01388888888888889], 
         RGBColor[0.560181, 0.691569, 0.194885], 
         AbsoluteThickness[1.6]], 
        GeometricTransformationBox[
         InsetBox[
          BoxData[
           FormBox[
            StyleBox[
            "\"\[FilledDiamond]\"", FontSize -> 10.88, StripOnInput -> False],
             TraditionalForm]], {0., 0.}], CompressedData["
1:eJxTTMoPSmVmYGAQAWJGIGZigIEP9gyowAGVy4HGF0Dji6DxJdD4Mg5/Vn68
5JsUALVHwaHypZohx5oaKF/JoVpknfvDqhYoXwUqPwfKV3NYUmDLdX3xBihf
w4FjjUxUivV+KF/LQb71deAOuaNQvo5D0A45oMgJKF/P4fBXjZj+QzB5A6h5
B6B8Q4fHS2cfUdiwCco3cpBkCePT3TQXyjdGc58J3H8Avt86HQ==
         "]]}, {
        Hue[0.37820393249936934`, 0.6, 0.6], 
        Directive[
         PointSize[0.01388888888888889], 
         RGBColor[0.922526, 0.385626, 0.209179], 
         AbsoluteThickness[1.6]], 
        GeometricTransformationBox[
         InsetBox[
          BoxData[
           FormBox[
            StyleBox[
            "\"\[FilledUpTriangle]\"", FontSize -> 10.24, StripOnInput -> 
             False], TraditionalForm]], {0., 0.}], CompressedData["
1:eJxTTMoPSmVmYGAQAWJGIGZigIEP9gyowAGVy4HGF3D4s/LjJd+kBKg+ETR5
Cah8AVRexqFaZJ37w6oWKF/BYZcnD5N2+zIoX8nBpTvn+e+VG6F8FYcNRRkT
39bsh/LVHC77JglEWB6B8jUc8oWaD5xaeBTK13KIAxt4HMrXcbDccqJs3/xd
UL4eVP8WKN/Awfq+f+/0vEVQvqHDr7qsPSWTO6B8Iyi/Aso3hvIzoHwTuH8B
GXZFww==
         "]]}, {
        Hue[0.6142719099991583, 0.6, 0.6], 
        Directive[
         PointSize[0.01388888888888889], 
         RGBColor[0.528488, 0.470624, 0.701351], 
         AbsoluteThickness[1.6]], 
        GeometricTransformationBox[
         InsetBox[
          BoxData[
           FormBox[
            StyleBox[
            "\"\[FilledDownTriangle]\"", FontSize -> 10.24, StripOnInput -> 
             False], TraditionalForm]], {0., 0.}], CompressedData["
1:eJxTTMoPSmVmYGAQAWJGIGZigIEP9gyowOHPyo+XfJMCoOIcDqjSAg6/6rL2
lEyugMqLOOzy5GHSbm+D8iUcuK4vLrDlWg7lyzicXui67fPfLVC+gsPBUyCB
vVC+ksN9/97peUKHoXwVh39XKl6qGZ6A8tUcjMEAJq/hEGG55UTZvv1QvpaD
NdiATVC+DpS/CMrXc9gh1/o6cEcflG+A5j9DNL4Rmn+N0eRN4PIAg7dL/g==

         "]]}, {}}, {
       TagBox[
        TooltipBox[{
          Opacity[0.], {
           PointBox[{1., 0.}]}}, 
         RowBox[{"{", 
           RowBox[{"1.`", ",", "0.`"}], "}"}]], 
        Annotation[#, {1., 0.}, "Tooltip"]& ], 
       TagBox[
        TooltipBox[{
          Opacity[0.], {
           PointBox[{2., 0.}]}}, 
         RowBox[{"{", 
           RowBox[{"2.`", ",", "0.`"}], "}"}]], 
        Annotation[#, {2., 0.}, "Tooltip"]& ], 
       TagBox[
        TooltipBox[{
          Opacity[0.], {
           PointBox[{3., 0.}]}}, 
         RowBox[{"{", 
           RowBox[{"3.`", ",", "0.`"}], "}"}]], 
        Annotation[#, {3., 0.}, "Tooltip"]& ], 
       TagBox[
        TooltipBox[{
          Opacity[0.], {
           PointBox[{4., 0.}]}}, 
         RowBox[{"{", 
           RowBox[{"4.`", ",", "0.`"}], "}"}]], 
        Annotation[#, {4., 0.}, "Tooltip"]& ], 
       TagBox[
        TooltipBox[{
          Opacity[0.], {
           PointBox[{5., 0.}]}}, 
         RowBox[{"{", 
           RowBox[{"5.`", ",", "0.`"}], "}"}]], 
        Annotation[#, {5., 0.}, "Tooltip"]& ], 
       TagBox[
        TooltipBox[{
          Opacity[0.], {
           PointBox[{6., 0.}]}}, 
         RowBox[{"{", 
           RowBox[{"6.`", ",", "0.`"}], "}"}]], 
        Annotation[#, {6., 0.}, "Tooltip"]& ], 
       TagBox[
        TooltipBox[{
          Opacity[0.], {
           PointBox[{7., 0.}]}}, 
         RowBox[{"{", 
           RowBox[{"7.`", ",", "0.`"}], "}"}]], 
        Annotation[#, {7., 0.}, "Tooltip"]& ], 
       TagBox[
        TooltipBox[{
          Opacity[0.], {
           PointBox[{8., 0.}]}}, 
         RowBox[{"{", 
           RowBox[{"8.`", ",", "0.`"}], "}"}]], 
        Annotation[#, {8., 0.}, "Tooltip"]& ], 
       TagBox[
        TooltipBox[{
          Opacity[0.], {
           PointBox[{9., 0.}]}}, 
         RowBox[{"{", 
           RowBox[{"9.`", ",", "0.`"}], "}"}]], 
        Annotation[#, {9., 0.}, "Tooltip"]& ], 
       TagBox[
        TooltipBox[{
          Opacity[0.], {
           PointBox[{10., 0.}]}}, 
         RowBox[{"{", 
           RowBox[{"10.`", ",", "0.`"}], "}"}]], 
        Annotation[#, {10., 0.}, "Tooltip"]& ], 
       TagBox[
        TooltipBox[{
          Opacity[0.], {
           PointBox[{11., 0.}]}}, 
         RowBox[{"{", 
           RowBox[{"11.`", ",", "0.`"}], "}"}]], 
        Annotation[#, {11., 0.}, "Tooltip"]& ], 
       TagBox[
        TooltipBox[{
          Opacity[0.], {
           PointBox[{12., 0.}]}}, 
         RowBox[{"{", 
           RowBox[{"12.`", ",", "0.`"}], "}"}]], 
        Annotation[#, {12., 0.}, "Tooltip"]& ], 
       TagBox[
        TooltipBox[{
          Opacity[0.], {
           PointBox[{13., 0.001}]}}, 
         RowBox[{"{", 
           RowBox[{"13.`", ",", "0.001`"}], "}"}]], 
        Annotation[#, {13., 0.001}, "Tooltip"]& ], 
       TagBox[
        TooltipBox[{
          Opacity[0.], {
           PointBox[{14., 0.008}]}}, 
         RowBox[{"{", 
           RowBox[{"14.`", ",", "0.008`"}], "}"}]], 
        Annotation[#, {14., 0.008}, "Tooltip"]& ], 
       TagBox[
        TooltipBox[{
          Opacity[0.], {
           PointBox[{15., 0.035}]}}, 
         RowBox[{"{", 
           RowBox[{"15.`", ",", "0.035`"}], "}"}]], 
        Annotation[#, {15., 0.035}, "Tooltip"]& ], 
       TagBox[
        TooltipBox[{
          Opacity[0.], {
           PointBox[{16., 0.078}]}}, 
         RowBox[{"{", 
           RowBox[{"16.`", ",", "0.078`"}], "}"}]], 
        Annotation[#, {16., 0.078}, "Tooltip"]& ], 
       TagBox[
        TooltipBox[{
          Opacity[0.], {
           PointBox[{17., 0.199}]}}, 
         RowBox[{"{", 
           RowBox[{"17.`", ",", "0.199`"}], "}"}]], 
        Annotation[#, {17., 0.199}, "Tooltip"]& ], 
       TagBox[
        TooltipBox[{
          Opacity[0.], {
           PointBox[{18., 0.289}]}}, 
         RowBox[{"{", 
           RowBox[{"18.`", ",", "0.289`"}], "}"}]], 
        Annotation[#, {18., 0.289}, "Tooltip"]& ], 
       TagBox[
        TooltipBox[{
          Opacity[0.], {
           PointBox[{19., 0.28}]}}, 
         RowBox[{"{", 
           RowBox[{"19.`", ",", "0.28`"}], "}"}]], 
        Annotation[#, {19., 0.28}, "Tooltip"]& ], 
       TagBox[
        TooltipBox[{
          Opacity[0.], {
           PointBox[{20., 0.11}]}}, 
         RowBox[{"{", 
           RowBox[{"20.`", ",", "0.11`"}], "}"}]], 
        Annotation[#, {20., 0.11}, "Tooltip"]& ], 
       TagBox[
        TooltipBox[{
          Opacity[0.], {
           PointBox[{1., 0.}]}}, 
         RowBox[{"{", 
           RowBox[{"1.`", ",", "0.`"}], "}"}]], 
        Annotation[#, {1., 0.}, "Tooltip"]& ], 
       TagBox[
        TooltipBox[{
          Opacity[0.], {
           PointBox[{2., 0.}]}}, 
         RowBox[{"{", 
           RowBox[{"2.`", ",", "0.`"}], "}"}]], 
        Annotation[#, {2., 0.}, "Tooltip"]& ], 
       TagBox[
        TooltipBox[{
          Opacity[0.], {
           PointBox[{3., 0.}]}}, 
         RowBox[{"{", 
           RowBox[{"3.`", ",", "0.`"}], "}"}]], 
        Annotation[#, {3., 0.}, "Tooltip"]& ], 
       TagBox[
        TooltipBox[{
          Opacity[0.], {
           PointBox[{4., 0.}]}}, 
         RowBox[{"{", 
           RowBox[{"4.`", ",", "0.`"}], "}"}]], 
        Annotation[#, {4., 0.}, "Tooltip"]& ], 
       TagBox[
        TooltipBox[{
          Opacity[0.], {
           PointBox[{5., 0.}]}}, 
         RowBox[{"{", 
           RowBox[{"5.`", ",", "0.`"}], "}"}]], 
        Annotation[#, {5., 0.}, "Tooltip"]& ], 
       TagBox[
        TooltipBox[{
          Opacity[0.], {
           PointBox[{6., 0.}]}}, 
         RowBox[{"{", 
           RowBox[{"6.`", ",", "0.`"}], "}"}]], 
        Annotation[#, {6., 0.}, "Tooltip"]& ], 
       TagBox[
        TooltipBox[{
          Opacity[0.], {
           PointBox[{7., 0.}]}}, 
         RowBox[{"{", 
           RowBox[{"7.`", ",", "0.`"}], "}"}]], 
        Annotation[#, {7., 0.}, "Tooltip"]& ], 
       TagBox[
        TooltipBox[{
          Opacity[0.], {
           PointBox[{8., 0.}]}}, 
         RowBox[{"{", 
           RowBox[{"8.`", ",", "0.`"}], "}"}]], 
        Annotation[#, {8., 0.}, "Tooltip"]& ], 
       TagBox[
        TooltipBox[{
          Opacity[0.], {
           PointBox[{9., 0.001}]}}, 
         RowBox[{"{", 
           RowBox[{"9.`", ",", "0.001`"}], "}"}]], 
        Annotation[#, {9., 0.001}, "Tooltip"]& ], 
       TagBox[
        TooltipBox[{
          Opacity[0.], {
           PointBox[{10., 0.003}]}}, 
         RowBox[{"{", 
           RowBox[{"10.`", ",", "0.003`"}], "}"}]], 
        Annotation[#, {10., 0.003}, "Tooltip"]& ], 
       TagBox[
        TooltipBox[{
          Opacity[0.], {
           PointBox[{11., 0.006}]}}, 
         RowBox[{"{", 
           RowBox[{"11.`", ",", "0.006`"}], "}"}]], 
        Annotation[#, {11., 0.006}, "Tooltip"]& ], 
       TagBox[
        TooltipBox[{
          Opacity[0.], {
           PointBox[{12., 0.027}]}}, 
         RowBox[{"{", 
           RowBox[{"12.`", ",", "0.027`"}], "}"}]], 
        Annotation[#, {12., 0.027}, "Tooltip"]& ], 
       TagBox[
        TooltipBox[{
          Opacity[0.], {
           PointBox[{13., 0.045}]}}, 
         RowBox[{"{", 
           RowBox[{"13.`", ",", "0.045`"}], "}"}]], 
        Annotation[#, {13., 0.045}, "Tooltip"]& ], 
       TagBox[
        TooltipBox[{
          Opacity[0.], {
           PointBox[{14., 0.121}]}}, 
         RowBox[{"{", 
           RowBox[{"14.`", ",", "0.121`"}], "}"}]], 
        Annotation[#, {14., 0.121}, "Tooltip"]& ], 
       TagBox[
        TooltipBox[{
          Opacity[0.], {
           PointBox[{15., 0.155}]}}, 
         RowBox[{"{", 
           RowBox[{"15.`", ",", "0.155`"}], "}"}]], 
        Annotation[#, {15., 0.155}, "Tooltip"]& ], 
       TagBox[
        TooltipBox[{
          Opacity[0.], {
           PointBox[{16., 0.209}]}}, 
         RowBox[{"{", 
           RowBox[{"16.`", ",", "0.209`"}], "}"}]], 
        Annotation[#, {16., 0.209}, "Tooltip"]& ], 
       TagBox[
        TooltipBox[{
          Opacity[0.], {
           PointBox[{17., 0.238}]}}, 
         RowBox[{"{", 
           RowBox[{"17.`", ",", "0.238`"}], "}"}]], 
        Annotation[#, {17., 0.238}, "Tooltip"]& ], 
       TagBox[
        TooltipBox[{
          Opacity[0.], {
           PointBox[{18., 0.124}]}}, 
         RowBox[{"{", 
           RowBox[{"18.`", ",", "0.124`"}], "}"}]], 
        Annotation[#, {18., 0.124}, "Tooltip"]& ], 
       TagBox[
        TooltipBox[{
          Opacity[0.], {
           PointBox[{19., 0.059}]}}, 
         RowBox[{"{", 
           RowBox[{"19.`", ",", "0.059`"}], "}"}]], 
        Annotation[#, {19., 0.059}, "Tooltip"]& ], 
       TagBox[
        TooltipBox[{
          Opacity[0.], {
           PointBox[{20., 0.012}]}}, 
         RowBox[{"{", 
           RowBox[{"20.`", ",", "0.012`"}], "}"}]], 
        Annotation[#, {20., 0.012}, "Tooltip"]& ], 
       TagBox[
        TooltipBox[{
          Opacity[0.], {
           PointBox[{1., 0.}]}}, 
         RowBox[{"{", 
           RowBox[{"1.`", ",", "0.`"}], "}"}]], 
        Annotation[#, {1., 0.}, "Tooltip"]& ], 
       TagBox[
        TooltipBox[{
          Opacity[0.], {
           PointBox[{2., 0.}]}}, 
         RowBox[{"{", 
           RowBox[{"2.`", ",", "0.`"}], "}"}]], 
        Annotation[#, {2., 0.}, "Tooltip"]& ], 
       TagBox[
        TooltipBox[{
          Opacity[0.], {
           PointBox[{3., 0.}]}}, 
         RowBox[{"{", 
           RowBox[{"3.`", ",", "0.`"}], "}"}]], 
        Annotation[#, {3., 0.}, "Tooltip"]& ], 
       TagBox[
        TooltipBox[{
          Opacity[0.], {
           PointBox[{4., 0.}]}}, 
         RowBox[{"{", 
           RowBox[{"4.`", ",", "0.`"}], "}"}]], 
        Annotation[#, {4., 0.}, "Tooltip"]& ], 
       TagBox[
        TooltipBox[{
          Opacity[0.], {
           PointBox[{5., 0.}]}}, 
         RowBox[{"{", 
           RowBox[{"5.`", ",", "0.`"}], "}"}]], 
        Annotation[#, {5., 0.}, "Tooltip"]& ], 
       TagBox[
        TooltipBox[{
          Opacity[0.], {
           PointBox[{6., 0.}]}}, 
         RowBox[{"{", 
           RowBox[{"6.`", ",", "0.`"}], "}"}]], 
        Annotation[#, {6., 0.}, "Tooltip"]& ], 
       TagBox[
        TooltipBox[{
          Opacity[0.], {
           PointBox[{7., 0.001}]}}, 
         RowBox[{"{", 
           RowBox[{"7.`", ",", "0.001`"}], "}"}]], 
        Annotation[#, {7., 0.001}, "Tooltip"]& ], 
       TagBox[
        TooltipBox[{
          Opacity[0.], {
           PointBox[{8., 0.007}]}}, 
         RowBox[{"{", 
           RowBox[{"8.`", ",", "0.007`"}], "}"}]], 
        Annotation[#, {8., 0.007}, "Tooltip"]& ], 
       TagBox[
        TooltipBox[{
          Opacity[0.], {
           PointBox[{9., 0.01}]}}, 
         RowBox[{"{", 
           RowBox[{"9.`", ",", "0.01`"}], "}"}]], 
        Annotation[#, {9., 0.01}, "Tooltip"]& ], 
       TagBox[
        TooltipBox[{
          Opacity[0.], {
           PointBox[{10., 0.028}]}}, 
         RowBox[{"{", 
           RowBox[{"10.`", ",", "0.028`"}], "}"}]], 
        Annotation[#, {10., 0.028}, "Tooltip"]& ], 
       TagBox[
        TooltipBox[{
          Opacity[0.], {
           PointBox[{11., 0.065}]}}, 
         RowBox[{"{", 
           RowBox[{"11.`", ",", "0.065`"}], "}"}]], 
        Annotation[#, {11., 0.065}, "Tooltip"]& ], 
       TagBox[
        TooltipBox[{
          Opacity[0.], {
           PointBox[{12., 0.122}]}}, 
         RowBox[{"{", 
           RowBox[{"12.`", ",", "0.122`"}], "}"}]], 
        Annotation[#, {12., 0.122}, "Tooltip"]& ], 
       TagBox[
        TooltipBox[{
          Opacity[0.], {
           PointBox[{13., 0.165}]}}, 
         RowBox[{"{", 
           RowBox[{"13.`", ",", "0.165`"}], "}"}]], 
        Annotation[#, {13., 0.165}, "Tooltip"]& ], 
       TagBox[
        TooltipBox[{
          Opacity[0.], {
           PointBox[{14., 0.19}]}}, 
         RowBox[{"{", 
           RowBox[{"14.`", ",", "0.19`"}], "}"}]], 
        Annotation[#, {14., 0.19}, "Tooltip"]& ], 
       TagBox[
        TooltipBox[{
          Opacity[0.], {
           PointBox[{15., 0.17}]}}, 
         RowBox[{"{", 
           RowBox[{"15.`", ",", "0.17`"}], "}"}]], 
        Annotation[#, {15., 0.17}, "Tooltip"]& ], 
       TagBox[
        TooltipBox[{
          Opacity[0.], {
           PointBox[{16., 0.13}]}}, 
         RowBox[{"{", 
           RowBox[{"16.`", ",", "0.13`"}], "}"}]], 
        Annotation[#, {16., 0.13}, "Tooltip"]& ], 
       TagBox[
        TooltipBox[{
          Opacity[0.], {
           PointBox[{17., 0.073}]}}, 
         RowBox[{"{", 
           RowBox[{"17.`", ",", "0.073`"}], "}"}]], 
        Annotation[#, {17., 0.073}, "Tooltip"]& ], 
       TagBox[
        TooltipBox[{
          Opacity[0.], {
           PointBox[{18., 0.029}]}}, 
         RowBox[{"{", 
           RowBox[{"18.`", ",", "0.029`"}], "}"}]], 
        Annotation[#, {18., 0.029}, "Tooltip"]& ], 
       TagBox[
        TooltipBox[{
          Opacity[0.], {
           PointBox[{19., 0.01}]}}, 
         RowBox[{"{", 
           RowBox[{"19.`", ",", "0.01`"}], "}"}]], 
        Annotation[#, {19., 0.01}, "Tooltip"]& ], 
       TagBox[
        TooltipBox[{
          Opacity[0.], {
           PointBox[{20., 0.}]}}, 
         RowBox[{"{", 
           RowBox[{"20.`", ",", "0.`"}], "}"}]], 
        Annotation[#, {20., 0.}, "Tooltip"]& ], 
       TagBox[
        TooltipBox[{
          Opacity[0.], {
           PointBox[{1., 0.}]}}, 
         RowBox[{"{", 
           RowBox[{"1.`", ",", "0.`"}], "}"}]], 
        Annotation[#, {1., 0.}, "Tooltip"]& ], 
       TagBox[
        TooltipBox[{
          Opacity[0.], {
           PointBox[{2., 0.}]}}, 
         RowBox[{"{", 
           RowBox[{"2.`", ",", "0.`"}], "}"}]], 
        Annotation[#, {2., 0.}, "Tooltip"]& ], 
       TagBox[
        TooltipBox[{
          Opacity[0.], {
           PointBox[{3., 0.}]}}, 
         RowBox[{"{", 
           RowBox[{"3.`", ",", "0.`"}], "}"}]], 
        Annotation[#, {3., 0.}, "Tooltip"]& ], 
       TagBox[
        TooltipBox[{
          Opacity[0.], {
           PointBox[{4., 0.002}]}}, 
         RowBox[{"{", 
           RowBox[{"4.`", ",", "0.002`"}], "}"}]], 
        Annotation[#, {4., 0.002}, "Tooltip"]& ], 
       TagBox[
        TooltipBox[{
          Opacity[0.], {
           PointBox[{5., 0.}]}}, 
         RowBox[{"{", 
           RowBox[{"5.`", ",", "0.`"}], "}"}]], 
        Annotation[#, {5., 0.}, "Tooltip"]& ], 
       TagBox[
        TooltipBox[{
          Opacity[0.], {
           PointBox[{6., 0.004}]}}, 
         RowBox[{"{", 
           RowBox[{"6.`", ",", "0.004`"}], "}"}]], 
        Annotation[#, {6., 0.004}, "Tooltip"]& ], 
       TagBox[
        TooltipBox[{
          Opacity[0.], {
           PointBox[{7., 0.01}]}}, 
         RowBox[{"{", 
           RowBox[{"7.`", ",", "0.01`"}], "}"}]], 
        Annotation[#, {7., 0.01}, "Tooltip"]& ], 
       TagBox[
        TooltipBox[{
          Opacity[0.], {
           PointBox[{8., 0.044}]}}, 
         RowBox[{"{", 
           RowBox[{"8.`", ",", "0.044`"}], "}"}]], 
        Annotation[#, {8., 0.044}, "Tooltip"]& ], 
       TagBox[
        TooltipBox[{
          Opacity[0.], {
           PointBox[{9., 0.069}]}}, 
         RowBox[{"{", 
           RowBox[{"9.`", ",", "0.069`"}], "}"}]], 
        Annotation[#, {9., 0.069}, "Tooltip"]& ], 
       TagBox[
        TooltipBox[{
          Opacity[0.], {
           PointBox[{10., 0.123}]}}, 
         RowBox[{"{", 
           RowBox[{"10.`", ",", "0.123`"}], "}"}]], 
        Annotation[#, {10., 0.123}, "Tooltip"]& ], 
       TagBox[
        TooltipBox[{
          Opacity[0.], {
           PointBox[{11., 0.158}]}}, 
         RowBox[{"{", 
           RowBox[{"11.`", ",", "0.158`"}], "}"}]], 
        Annotation[#, {11., 0.158}, "Tooltip"]& ], 
       TagBox[
        TooltipBox[{
          Opacity[0.], {
           PointBox[{12., 0.169}]}}, 
         RowBox[{"{", 
           RowBox[{"12.`", ",", "0.169`"}], "}"}]], 
        Annotation[#, {12., 0.169}, "Tooltip"]& ], 
       TagBox[
        TooltipBox[{
          Opacity[0.], {
           PointBox[{13., 0.181}]}}, 
         RowBox[{"{", 
           RowBox[{"13.`", ",", "0.181`"}], "}"}]], 
        Annotation[#, {13., 0.181}, "Tooltip"]& ], 
       TagBox[
        TooltipBox[{
          Opacity[0.], {
           PointBox[{14., 0.104}]}}, 
         RowBox[{"{", 
           RowBox[{"14.`", ",", "0.104`"}], "}"}]], 
        Annotation[#, {14., 0.104}, "Tooltip"]& ], 
       TagBox[
        TooltipBox[{
          Opacity[0.], {
           PointBox[{15., 0.079}]}}, 
         RowBox[{"{", 
           RowBox[{"15.`", ",", "0.079`"}], "}"}]], 
        Annotation[#, {15., 0.079}, "Tooltip"]& ], 
       TagBox[
        TooltipBox[{
          Opacity[0.], {
           PointBox[{16., 0.036}]}}, 
         RowBox[{"{", 
           RowBox[{"16.`", ",", "0.036`"}], "}"}]], 
        Annotation[#, {16., 0.036}, "Tooltip"]& ], 
       TagBox[
        TooltipBox[{
          Opacity[0.], {
           PointBox[{17., 0.012}]}}, 
         RowBox[{"{", 
           RowBox[{"17.`", ",", "0.012`"}], "}"}]], 
        Annotation[#, {17., 0.012}, "Tooltip"]& ], 
       TagBox[
        TooltipBox[{
          Opacity[0.], {
           PointBox[{18., 0.006}]}}, 
         RowBox[{"{", 
           RowBox[{"18.`", ",", "0.006`"}], "}"}]], 
        Annotation[#, {18., 0.006}, "Tooltip"]& ], 
       TagBox[
        TooltipBox[{
          Opacity[0.], {
           PointBox[{19., 0.003}]}}, 
         RowBox[{"{", 
           RowBox[{"19.`", ",", "0.003`"}], "}"}]], 
        Annotation[#, {19., 0.003}, "Tooltip"]& ], 
       TagBox[
        TooltipBox[{
          Opacity[0.], {
           PointBox[{20., 0.}]}}, 
         RowBox[{"{", 
           RowBox[{"20.`", ",", "0.`"}], "}"}]], 
        Annotation[#, {20., 0.}, "Tooltip"]& ], 
       TagBox[
        TooltipBox[{
          Opacity[0.], {
           PointBox[{1., 0.}]}}, 
         RowBox[{"{", 
           RowBox[{"1.`", ",", "0.`"}], "}"}]], 
        Annotation[#, {1., 0.}, "Tooltip"]& ], 
       TagBox[
        TooltipBox[{
          Opacity[0.], {
           PointBox[{2., 0.001}]}}, 
         RowBox[{"{", 
           RowBox[{"2.`", ",", "0.001`"}], "}"}]], 
        Annotation[#, {2., 0.001}, "Tooltip"]& ], 
       TagBox[
        TooltipBox[{
          Opacity[0.], {
           PointBox[{3., 0.}]}}, 
         RowBox[{"{", 
           RowBox[{"3.`", ",", "0.`"}], "}"}]], 
        Annotation[#, {3., 0.}, "Tooltip"]& ], 
       TagBox[
        TooltipBox[{
          Opacity[0.], {
           PointBox[{4., 0.006}]}}, 
         RowBox[{"{", 
           RowBox[{"4.`", ",", "0.006`"}], "}"}]], 
        Annotation[#, {4., 0.006}, "Tooltip"]& ], 
       TagBox[
        TooltipBox[{
          Opacity[0.], {
           PointBox[{5., 0.011}]}}, 
         RowBox[{"{", 
           RowBox[{"5.`", ",", "0.011`"}], "}"}]], 
        Annotation[#, {5., 0.011}, "Tooltip"]& ], 
       TagBox[
        TooltipBox[{
          Opacity[0.], {
           PointBox[{6., 0.045}]}}, 
         RowBox[{"{", 
           RowBox[{"6.`", ",", "0.045`"}], "}"}]], 
        Annotation[#, {6., 0.045}, "Tooltip"]& ], 
       TagBox[
        TooltipBox[{
          Opacity[0.], {
           PointBox[{7., 0.082}]}}, 
         RowBox[{"{", 
           RowBox[{"7.`", ",", "0.082`"}], "}"}]], 
        Annotation[#, {7., 0.082}, "Tooltip"]& ], 
       TagBox[
        TooltipBox[{
          Opacity[0.], {
           PointBox[{8., 0.117}]}}, 
         RowBox[{"{", 
           RowBox[{"8.`", ",", "0.117`"}], "}"}]], 
        Annotation[#, {8., 0.117}, "Tooltip"]& ], 
       TagBox[
        TooltipBox[{
          Opacity[0.], {
           PointBox[{9., 0.149}]}}, 
         RowBox[{"{", 
           RowBox[{"9.`", ",", "0.149`"}], "}"}]], 
        Annotation[#, {9., 0.149}, "Tooltip"]& ], 
       TagBox[
        TooltipBox[{
          Opacity[0.], {
           PointBox[{10., 0.189}]}}, 
         RowBox[{"{", 
           RowBox[{"10.`", ",", "0.189`"}], "}"}]], 
        Annotation[#, {10., 0.189}, "Tooltip"]& ], 
       TagBox[
        TooltipBox[{
          Opacity[0.], {
           PointBox[{11., 0.15}]}}, 
         RowBox[{"{", 
           RowBox[{"11.`", ",", "0.15`"}], "}"}]], 
        Annotation[#, {11., 0.15}, "Tooltip"]& ], 
       TagBox[
        TooltipBox[{
          Opacity[0.], {
           PointBox[{12., 0.124}]}}, 
         RowBox[{"{", 
           RowBox[{"12.`", ",", "0.124`"}], "}"}]], 
        Annotation[#, {12., 0.124}, "Tooltip"]& ], 
       TagBox[
        TooltipBox[{
          Opacity[0.], {
           PointBox[{13., 0.072}]}}, 
         RowBox[{"{", 
           RowBox[{"13.`", ",", "0.072`"}], "}"}]], 
        Annotation[#, {13., 0.072}, "Tooltip"]& ], 
       TagBox[
        TooltipBox[{
          Opacity[0.], {
           PointBox[{14., 0.036}]}}, 
         RowBox[{"{", 
           RowBox[{"14.`", ",", "0.036`"}], "}"}]], 
        Annotation[#, {14., 0.036}, "Tooltip"]& ], 
       TagBox[
        TooltipBox[{
          Opacity[0.], {
           PointBox[{15., 0.015}]}}, 
         RowBox[{"{", 
           RowBox[{"15.`", ",", "0.015`"}], "}"}]], 
        Annotation[#, {15., 0.015}, "Tooltip"]& ], 
       TagBox[
        TooltipBox[{
          Opacity[0.], {
           PointBox[{16., 0.001}]}}, 
         RowBox[{"{", 
           RowBox[{"16.`", ",", "0.001`"}], "}"}]], 
        Annotation[#, {16., 0.001}, "Tooltip"]& ], 
       TagBox[
        TooltipBox[{
          Opacity[0.], {
           PointBox[{17., 0.001}]}}, 
         RowBox[{"{", 
           RowBox[{"17.`", ",", "0.001`"}], "}"}]], 
        Annotation[#, {17., 0.001}, "Tooltip"]& ], 
       TagBox[
        TooltipBox[{
          Opacity[0.], {
           PointBox[{18., 0.}]}}, 
         RowBox[{"{", 
           RowBox[{"18.`", ",", "0.`"}], "}"}]], 
        Annotation[#, {18., 0.}, "Tooltip"]& ], 
       TagBox[
        TooltipBox[{
          Opacity[0.], {
           PointBox[{19., 0.001}]}}, 
         RowBox[{"{", 
           RowBox[{"19.`", ",", "0.001`"}], "}"}]], 
        Annotation[#, {19., 0.001}, "Tooltip"]& ], 
       TagBox[
        TooltipBox[{
          Opacity[0.], {
           PointBox[{20., 0.}]}}, 
         RowBox[{"{", 
           RowBox[{"20.`", ",", "0.`"}], "}"}]], 
        Annotation[#, {20., 0.}, "Tooltip"]& ]}}, {}}, {
    DisplayFunction -> Identity, PlotRangePadding -> {{
        Scaled[0.02], 
        Scaled[0.02]}, {0, 0}}, AxesOrigin -> {0, 0}, 
     PlotRange -> {{0, 20.}, {0, 0.35}}, DisplayFunction -> Identity, 
     AspectRatio -> NCache[GoldenRatio^(-1), 0.6180339887498948], 
     Axes -> {True, True}, AxesLabel -> {
       FormBox[
       "\"# corruption reports\\namongst 20 respondents\"", TraditionalForm], 
       
       FormBox["\"Probability of Result\"", TraditionalForm]}, 
     AxesOrigin -> {0, 0}, DisplayFunction :> Identity, 
     Frame -> {{False, False}, {False, False}}, 
     FrameLabel -> {{None, None}, {None, None}}, 
     FrameTicks -> {{Automatic, Automatic}, {Automatic, Automatic}}, 
     GridLines -> {{1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17,
        18, 19, 20}, {0., 0.05, 0.1, 0.15000000000000002`, 0.2, 0.25, 
       0.30000000000000004`, 0.35000000000000003`}}, GridLinesStyle -> 
     Directive[
       GrayLevel[0.5, 0.4]], ImageSize -> 600, Method -> {}, PlotLabel -> 
     FormBox["\"Actual Corruption Varying \\nfrom 90% to 50%\"", 
       TraditionalForm], PlotRange -> {{0, 20.}, {0, 0.35}}, 
     PlotRangeClipping -> True, PlotRangePadding -> {{
        Scaled[0.02], 
        Scaled[0.02]}, {0, 0}}, Ticks -> {{{1, 
         FormBox["1", TraditionalForm]}, {2, 
         FormBox["2", TraditionalForm]}, {3, 
         FormBox["3", TraditionalForm]}, {4, 
         FormBox["4", TraditionalForm]}, {5, 
         FormBox["5", TraditionalForm]}, {6, 
         FormBox["6", TraditionalForm]}, {7, 
         FormBox["7", TraditionalForm]}, {8, 
         FormBox["8", TraditionalForm]}, {9, 
         FormBox["9", TraditionalForm]}, {10, 
         FormBox["10", TraditionalForm]}, {11, 
         FormBox["11", TraditionalForm]}, {12, 
         FormBox["12", TraditionalForm]}, {13, 
         FormBox["13", TraditionalForm]}, {14, 
         FormBox["14", TraditionalForm]}, {15, 
         FormBox["15", TraditionalForm]}, {16, 
         FormBox["16", TraditionalForm]}, {17, 
         FormBox["17", TraditionalForm]}, {18, 
         FormBox["18", TraditionalForm]}, {19, 
         FormBox["19", TraditionalForm]}, {20, 
         FormBox["20", TraditionalForm]}}, {{0., 
         FormBox["0.`", TraditionalForm]}, {0.05, 
         FormBox["0.05`", TraditionalForm]}, {0.1, 
         FormBox["0.1`", TraditionalForm]}, {0.15000000000000002`, 
         FormBox["0.15000000000000002`", TraditionalForm]}, {0.2, 
         FormBox["0.2`", TraditionalForm]}, {0.25, 
         FormBox["0.25`", TraditionalForm]}, {0.30000000000000004`, 
         FormBox["0.30000000000000004`", TraditionalForm]}, {
        0.35000000000000003`, 
         FormBox["0.35000000000000003`", TraditionalForm]}}}}],FormBox[
    FormBox[
     TemplateBox[{"\"90%\"", "\"80%\"", "\"70%\"", "\"60%\"", "\"50%\""}, 
      "LineLegend", DisplayFunction -> (FormBox[
        StyleBox[
         StyleBox[
          PaneBox[
           TagBox[
            GridBox[{{
               TagBox[
                GridBox[{{
                   GraphicsBox[{{
                    Directive[
                    EdgeForm[
                    Directive[
                    Opacity[0.3], 
                    GrayLevel[0]]], 
                    PointSize[0.25], 
                    RGBColor[0.368417, 0.506779, 0.709798], 
                    AbsoluteThickness[1.6]], {
                    LineBox[{{0, 8.96}, {20, 8.96}}]}}, {
                    Directive[
                    EdgeForm[
                    Directive[
                    Opacity[0.3], 
                    GrayLevel[0]]], 
                    PointSize[0.25], 
                    RGBColor[0.368417, 0.506779, 0.709798], 
                    AbsoluteThickness[1.6]], {
                    InsetBox[
                    FormBox[
                    StyleBox["\"\[FilledCircle]\"", 
                    Directive[
                    EdgeForm[
                    Directive[
                    Opacity[0.3], 
                    GrayLevel[0]]], 
                    PointSize[0.25], 
                    RGBColor[0.368417, 0.506779, 0.709798], 
                    AbsoluteThickness[1.6]], FontSize -> 8.96, Plain, 
                    StripOnInput -> False], TraditionalForm], 
                    NCache[
                    Scaled[{
                    Rational[1, 2], 
                    Rational[1, 2]}], 
                    Scaled[{0.5, 0.5}]]]}}}, AspectRatio -> Full, 
                    ImageSize -> {20, 8.96}, PlotRangePadding -> None, 
                    ImagePadding -> Automatic, 
                    BaselinePosition -> (Scaled[0.06401785714285718] -> 
                    Baseline)], #}, {
                   GraphicsBox[{{
                    Directive[
                    EdgeForm[
                    Directive[
                    Opacity[0.3], 
                    GrayLevel[0]]], 
                    PointSize[0.25], 
                    RGBColor[0.880722, 0.611041, 0.142051], 
                    AbsoluteThickness[1.6]], {
                    LineBox[{{0, 8.96}, {20, 8.96}}]}}, {
                    Directive[
                    EdgeForm[
                    Directive[
                    Opacity[0.3], 
                    GrayLevel[0]]], 
                    PointSize[0.25], 
                    RGBColor[0.880722, 0.611041, 0.142051], 
                    AbsoluteThickness[1.6]], {
                    InsetBox[
                    FormBox[
                    StyleBox["\"\[FilledSquare]\"", 
                    Directive[
                    EdgeForm[
                    Directive[
                    Opacity[0.3], 
                    GrayLevel[0]]], 
                    PointSize[0.25], 
                    RGBColor[0.880722, 0.611041, 0.142051], 
                    AbsoluteThickness[1.6]], FontSize -> 8.96, Plain, 
                    StripOnInput -> False], TraditionalForm], 
                    NCache[
                    Scaled[{
                    Rational[1, 2], 
                    Rational[1, 2]}], 
                    Scaled[{0.5, 0.5}]]]}}}, AspectRatio -> Full, 
                    ImageSize -> {20, 8.96}, PlotRangePadding -> None, 
                    ImagePadding -> Automatic, 
                    BaselinePosition -> (Scaled[0.06401785714285718] -> 
                    Baseline)], #2}, {
                   GraphicsBox[{{
                    Directive[
                    EdgeForm[
                    Directive[
                    Opacity[0.3], 
                    GrayLevel[0]]], 
                    PointSize[0.25], 
                    RGBColor[0.560181, 0.691569, 0.194885], 
                    AbsoluteThickness[1.6]], {
                    LineBox[{{0, 10.88}, {20, 10.88}}]}}, {
                    Directive[
                    EdgeForm[
                    Directive[
                    Opacity[0.3], 
                    GrayLevel[0]]], 
                    PointSize[0.25], 
                    RGBColor[0.560181, 0.691569, 0.194885], 
                    AbsoluteThickness[1.6]], {
                    InsetBox[
                    FormBox[
                    StyleBox["\"\[FilledDiamond]\"", 
                    Directive[
                    EdgeForm[
                    Directive[
                    Opacity[0.3], 
                    GrayLevel[0]]], 
                    PointSize[0.25], 
                    RGBColor[0.560181, 0.691569, 0.194885], 
                    AbsoluteThickness[1.6]], FontSize -> 10.88, Plain, 
                    StripOnInput -> False], TraditionalForm], 
                    NCache[
                    Scaled[{
                    Rational[1, 2], 
                    Rational[1, 2]}], 
                    Scaled[{0.5, 0.5}]]]}}}, AspectRatio -> Full, 
                    ImageSize -> {20, 10.88}, PlotRangePadding -> None, 
                    ImagePadding -> Automatic, 
                    BaselinePosition -> (Scaled[0.13235294117647062`] -> 
                    Baseline)], #3}, {
                   GraphicsBox[{{
                    Directive[
                    EdgeForm[
                    Directive[
                    Opacity[0.3], 
                    GrayLevel[0]]], 
                    PointSize[0.25], 
                    RGBColor[0.922526, 0.385626, 0.209179], 
                    AbsoluteThickness[1.6]], {
                    LineBox[{{0, 10.24}, {20, 10.24}}]}}, {
                    Directive[
                    EdgeForm[
                    Directive[
                    Opacity[0.3], 
                    GrayLevel[0]]], 
                    PointSize[0.25], 
                    RGBColor[0.922526, 0.385626, 0.209179], 
                    AbsoluteThickness[1.6]], {
                    InsetBox[
                    FormBox[
                    StyleBox["\"\[FilledUpTriangle]\"", 
                    Directive[
                    EdgeForm[
                    Directive[
                    Opacity[0.3], 
                    GrayLevel[0]]], 
                    PointSize[0.25], 
                    RGBColor[0.922526, 0.385626, 0.209179], 
                    AbsoluteThickness[1.6]], FontSize -> 10.24, Plain, 
                    StripOnInput -> False], TraditionalForm], 
                    NCache[
                    Scaled[{
                    Rational[1, 2], 
                    Rational[1, 2]}], 
                    Scaled[{0.5, 0.5}]]]}}}, AspectRatio -> Full, 
                    ImageSize -> {20, 10.24}, PlotRangePadding -> None, 
                    ImagePadding -> Automatic, 
                    BaselinePosition -> (Scaled[0.10937500000000001`] -> 
                    Baseline)], #4}, {
                   GraphicsBox[{{
                    Directive[
                    EdgeForm[
                    Directive[
                    Opacity[0.3], 
                    GrayLevel[0]]], 
                    PointSize[0.25], 
                    RGBColor[0.528488, 0.470624, 0.701351], 
                    AbsoluteThickness[1.6]], {
                    LineBox[{{0, 10.24}, {20, 10.24}}]}}, {
                    Directive[
                    EdgeForm[
                    Directive[
                    Opacity[0.3], 
                    GrayLevel[0]]], 
                    PointSize[0.25], 
                    RGBColor[0.528488, 0.470624, 0.701351], 
                    AbsoluteThickness[1.6]], {
                    InsetBox[
                    FormBox[
                    StyleBox["\"\[FilledDownTriangle]\"", 
                    Directive[
                    EdgeForm[
                    Directive[
                    Opacity[0.3], 
                    GrayLevel[0]]], 
                    PointSize[0.25], 
                    RGBColor[0.528488, 0.470624, 0.701351], 
                    AbsoluteThickness[1.6]], FontSize -> 10.24, Plain, 
                    StripOnInput -> False], TraditionalForm], 
                    NCache[
                    Scaled[{
                    Rational[1, 2], 
                    Rational[1, 2]}], 
                    Scaled[{0.5, 0.5}]]]}}}, AspectRatio -> Full, 
                    ImageSize -> {20, 10.24}, PlotRangePadding -> None, 
                    ImagePadding -> Automatic, 
                    BaselinePosition -> (Scaled[0.10937500000000001`] -> 
                    Baseline)], #5}}, 
                 GridBoxAlignment -> {
                  "Columns" -> {Center, Left}, "Rows" -> {{Baseline}}}, 
                 AutoDelete -> False, 
                 GridBoxDividers -> {
                  "Columns" -> {{False}}, "Rows" -> {{False}}}, 
                 GridBoxItemSize -> {"Columns" -> {{All}}, "Rows" -> {{All}}},
                  GridBoxSpacings -> {
                  "Columns" -> {{0.5}}, "Rows" -> {{0.8}}}], "Grid"]}}, 
             GridBoxAlignment -> {"Columns" -> {{Left}}, "Rows" -> {{Top}}}, 
             AutoDelete -> False, 
             GridBoxItemSize -> {
              "Columns" -> {{Automatic}}, "Rows" -> {{Automatic}}}, 
             GridBoxSpacings -> {"Columns" -> {{1}}, "Rows" -> {{0}}}], 
            "Grid"], Alignment -> Left, AppearanceElements -> None, 
           ImageMargins -> {{5, 5}, {5, 5}}, ImageSizeAction -> 
           "ResizeToFit"], LineIndent -> 0, StripOnInput -> False], {
         FontFamily -> "Arial"}, Background -> Automatic, StripOnInput -> 
         False], TraditionalForm]& ), 
      InterpretationFunction :> (RowBox[{"LineLegend", "[", 
         RowBox[{
           RowBox[{"{", 
             RowBox[{
               RowBox[{"Directive", "[", 
                 RowBox[{
                   RowBox[{"PointSize", "[", "0.01388888888888889`", "]"}], 
                   ",", 
                   InterpretationBox[
                    ButtonBox[
                    TooltipBox[
                    RowBox[{
                    GraphicsBox[{{
                    GrayLevel[0], 
                    RectangleBox[{0, 0}]}, {
                    GrayLevel[0], 
                    RectangleBox[{1, -1}]}, {
                    RGBColor[0.368417, 0.506779, 0.709798], 
                    RectangleBox[{0, -1}, {2, 1}]}}, AspectRatio -> 1, Frame -> 
                    True, FrameStyle -> 
                    RGBColor[
                    0.24561133333333335`, 0.3378526666666667, 
                    0.4731986666666667], FrameTicks -> None, PlotRangePadding -> 
                    None, ImageSize -> 
                    Dynamic[{
                    Automatic, 
                    1.35 (CurrentValue["FontCapHeight"]/AbsoluteCurrentValue[
                    Magnification])}]], "\[InvisibleSpace]"}], 
                    "RGBColor[0.368417, 0.506779, 0.709798]"], Appearance -> 
                    None, BaseStyle -> {}, BaselinePosition -> Baseline, 
                    DefaultBaseStyle -> {}, ButtonFunction :> 
                    With[{Typeset`box$ = EvaluationBox[]}, 
                    If[
                    Not[
                    AbsoluteCurrentValue["Deployed"]], 
                    SelectionMove[Typeset`box$, All, Expression]; 
                    FrontEnd`Private`$ColorSelectorInitialAlpha = 1; 
                    FrontEnd`Private`$ColorSelectorInitialColor = 
                    RGBColor[0.368417, 0.506779, 0.709798]; 
                    FrontEnd`Private`$ColorSelectorUseMakeBoxes = True; 
                    MathLink`CallFrontEnd[
                    FrontEnd`AttachCell[Typeset`box$, 
                    FrontEndResource["RGBColorValueSelector"], {
                    0, {Left, Bottom}}, {Left, Top}, 
                    "ClosingActions" -> {
                    "SelectionDeparture", "ParentChanged", 
                    "EvaluatorQuit"}]]]], BaseStyle -> Inherited, Evaluator -> 
                    Automatic, Method -> "Preemptive"], 
                    RGBColor[0.368417, 0.506779, 0.709798], Editable -> False,
                     Selectable -> False], ",", 
                   RowBox[{"AbsoluteThickness", "[", "1.6`", "]"}]}], "]"}], 
               ",", 
               RowBox[{"Directive", "[", 
                 RowBox[{
                   RowBox[{"PointSize", "[", "0.01388888888888889`", "]"}], 
                   ",", 
                   InterpretationBox[
                    ButtonBox[
                    TooltipBox[
                    RowBox[{
                    GraphicsBox[{{
                    GrayLevel[0], 
                    RectangleBox[{0, 0}]}, {
                    GrayLevel[0], 
                    RectangleBox[{1, -1}]}, {
                    RGBColor[0.880722, 0.611041, 0.142051], 
                    RectangleBox[{0, -1}, {2, 1}]}}, AspectRatio -> 1, Frame -> 
                    True, FrameStyle -> 
                    RGBColor[
                    0.587148, 0.40736066666666665`, 0.09470066666666668], 
                    FrameTicks -> None, PlotRangePadding -> None, ImageSize -> 
                    Dynamic[{
                    Automatic, 
                    1.35 (CurrentValue["FontCapHeight"]/AbsoluteCurrentValue[
                    Magnification])}]], "\[InvisibleSpace]"}], 
                    "RGBColor[0.880722, 0.611041, 0.142051]"], Appearance -> 
                    None, BaseStyle -> {}, BaselinePosition -> Baseline, 
                    DefaultBaseStyle -> {}, ButtonFunction :> 
                    With[{Typeset`box$ = EvaluationBox[]}, 
                    If[
                    Not[
                    AbsoluteCurrentValue["Deployed"]], 
                    SelectionMove[Typeset`box$, All, Expression]; 
                    FrontEnd`Private`$ColorSelectorInitialAlpha = 1; 
                    FrontEnd`Private`$ColorSelectorInitialColor = 
                    RGBColor[0.880722, 0.611041, 0.142051]; 
                    FrontEnd`Private`$ColorSelectorUseMakeBoxes = True; 
                    MathLink`CallFrontEnd[
                    FrontEnd`AttachCell[Typeset`box$, 
                    FrontEndResource["RGBColorValueSelector"], {
                    0, {Left, Bottom}}, {Left, Top}, 
                    "ClosingActions" -> {
                    "SelectionDeparture", "ParentChanged", 
                    "EvaluatorQuit"}]]]], BaseStyle -> Inherited, Evaluator -> 
                    Automatic, Method -> "Preemptive"], 
                    RGBColor[0.880722, 0.611041, 0.142051], Editable -> False,
                     Selectable -> False], ",", 
                   RowBox[{"AbsoluteThickness", "[", "1.6`", "]"}]}], "]"}], 
               ",", 
               RowBox[{"Directive", "[", 
                 RowBox[{
                   RowBox[{"PointSize", "[", "0.01388888888888889`", "]"}], 
                   ",", 
                   InterpretationBox[
                    ButtonBox[
                    TooltipBox[
                    RowBox[{
                    GraphicsBox[{{
                    GrayLevel[0], 
                    RectangleBox[{0, 0}]}, {
                    GrayLevel[0], 
                    RectangleBox[{1, -1}]}, {
                    RGBColor[0.560181, 0.691569, 0.194885], 
                    RectangleBox[{0, -1}, {2, 1}]}}, AspectRatio -> 1, Frame -> 
                    True, FrameStyle -> 
                    RGBColor[
                    0.37345400000000006`, 0.461046, 0.12992333333333334`], 
                    FrameTicks -> None, PlotRangePadding -> None, ImageSize -> 
                    Dynamic[{
                    Automatic, 
                    1.35 (CurrentValue["FontCapHeight"]/AbsoluteCurrentValue[
                    Magnification])}]], "\[InvisibleSpace]"}], 
                    "RGBColor[0.560181, 0.691569, 0.194885]"], Appearance -> 
                    None, BaseStyle -> {}, BaselinePosition -> Baseline, 
                    DefaultBaseStyle -> {}, ButtonFunction :> 
                    With[{Typeset`box$ = EvaluationBox[]}, 
                    If[
                    Not[
                    AbsoluteCurrentValue["Deployed"]], 
                    SelectionMove[Typeset`box$, All, Expression]; 
                    FrontEnd`Private`$ColorSelectorInitialAlpha = 1; 
                    FrontEnd`Private`$ColorSelectorInitialColor = 
                    RGBColor[0.560181, 0.691569, 0.194885]; 
                    FrontEnd`Private`$ColorSelectorUseMakeBoxes = True; 
                    MathLink`CallFrontEnd[
                    FrontEnd`AttachCell[Typeset`box$, 
                    FrontEndResource["RGBColorValueSelector"], {
                    0, {Left, Bottom}}, {Left, Top}, 
                    "ClosingActions" -> {
                    "SelectionDeparture", "ParentChanged", 
                    "EvaluatorQuit"}]]]], BaseStyle -> Inherited, Evaluator -> 
                    Automatic, Method -> "Preemptive"], 
                    RGBColor[0.560181, 0.691569, 0.194885], Editable -> False,
                     Selectable -> False], ",", 
                   RowBox[{"AbsoluteThickness", "[", "1.6`", "]"}]}], "]"}], 
               ",", 
               RowBox[{"Directive", "[", 
                 RowBox[{
                   RowBox[{"PointSize", "[", "0.01388888888888889`", "]"}], 
                   ",", 
                   InterpretationBox[
                    ButtonBox[
                    TooltipBox[
                    RowBox[{
                    GraphicsBox[{{
                    GrayLevel[0], 
                    RectangleBox[{0, 0}]}, {
                    GrayLevel[0], 
                    RectangleBox[{1, -1}]}, {
                    RGBColor[0.922526, 0.385626, 0.209179], 
                    RectangleBox[{0, -1}, {2, 1}]}}, AspectRatio -> 1, Frame -> 
                    True, FrameStyle -> 
                    RGBColor[
                    0.6150173333333333, 0.25708400000000003`, 
                    0.13945266666666667`], FrameTicks -> None, 
                    PlotRangePadding -> None, ImageSize -> 
                    Dynamic[{
                    Automatic, 
                    1.35 (CurrentValue["FontCapHeight"]/AbsoluteCurrentValue[
                    Magnification])}]], "\[InvisibleSpace]"}], 
                    "RGBColor[0.922526, 0.385626, 0.209179]"], Appearance -> 
                    None, BaseStyle -> {}, BaselinePosition -> Baseline, 
                    DefaultBaseStyle -> {}, ButtonFunction :> 
                    With[{Typeset`box$ = EvaluationBox[]}, 
                    If[
                    Not[
                    AbsoluteCurrentValue["Deployed"]], 
                    SelectionMove[Typeset`box$, All, Expression]; 
                    FrontEnd`Private`$ColorSelectorInitialAlpha = 1; 
                    FrontEnd`Private`$ColorSelectorInitialColor = 
                    RGBColor[0.922526, 0.385626, 0.209179]; 
                    FrontEnd`Private`$ColorSelectorUseMakeBoxes = True; 
                    MathLink`CallFrontEnd[
                    FrontEnd`AttachCell[Typeset`box$, 
                    FrontEndResource["RGBColorValueSelector"], {
                    0, {Left, Bottom}}, {Left, Top}, 
                    "ClosingActions" -> {
                    "SelectionDeparture", "ParentChanged", 
                    "EvaluatorQuit"}]]]], BaseStyle -> Inherited, Evaluator -> 
                    Automatic, Method -> "Preemptive"], 
                    RGBColor[0.922526, 0.385626, 0.209179], Editable -> False,
                     Selectable -> False], ",", 
                   RowBox[{"AbsoluteThickness", "[", "1.6`", "]"}]}], "]"}], 
               ",", 
               RowBox[{"Directive", "[", 
                 RowBox[{
                   RowBox[{"PointSize", "[", "0.01388888888888889`", "]"}], 
                   ",", 
                   InterpretationBox[
                    ButtonBox[
                    TooltipBox[
                    RowBox[{
                    GraphicsBox[{{
                    GrayLevel[0], 
                    RectangleBox[{0, 0}]}, {
                    GrayLevel[0], 
                    RectangleBox[{1, -1}]}, {
                    RGBColor[0.528488, 0.470624, 0.701351], 
                    RectangleBox[{0, -1}, {2, 1}]}}, AspectRatio -> 1, Frame -> 
                    True, FrameStyle -> 
                    RGBColor[
                    0.3523253333333333, 0.3137493333333333, 
                    0.46756733333333333`], FrameTicks -> None, 
                    PlotRangePadding -> None, ImageSize -> 
                    Dynamic[{
                    Automatic, 
                    1.35 (CurrentValue["FontCapHeight"]/AbsoluteCurrentValue[
                    Magnification])}]], "\[InvisibleSpace]"}], 
                    "RGBColor[0.528488, 0.470624, 0.701351]"], Appearance -> 
                    None, BaseStyle -> {}, BaselinePosition -> Baseline, 
                    DefaultBaseStyle -> {}, ButtonFunction :> 
                    With[{Typeset`box$ = EvaluationBox[]}, 
                    If[
                    Not[
                    AbsoluteCurrentValue["Deployed"]], 
                    SelectionMove[Typeset`box$, All, Expression]; 
                    FrontEnd`Private`$ColorSelectorInitialAlpha = 1; 
                    FrontEnd`Private`$ColorSelectorInitialColor = 
                    RGBColor[0.528488, 0.470624, 0.701351]; 
                    FrontEnd`Private`$ColorSelectorUseMakeBoxes = True; 
                    MathLink`CallFrontEnd[
                    FrontEnd`AttachCell[Typeset`box$, 
                    FrontEndResource["RGBColorValueSelector"], {
                    0, {Left, Bottom}}, {Left, Top}, 
                    "ClosingActions" -> {
                    "SelectionDeparture", "ParentChanged", 
                    "EvaluatorQuit"}]]]], BaseStyle -> Inherited, Evaluator -> 
                    Automatic, Method -> "Preemptive"], 
                    RGBColor[0.528488, 0.470624, 0.701351], Editable -> False,
                     Selectable -> False], ",", 
                   RowBox[{"AbsoluteThickness", "[", "1.6`", "]"}]}], "]"}]}],
              "}"}], ",", 
           RowBox[{"{", 
             RowBox[{#, ",", #2, ",", #3, ",", #4, ",", #5}], "}"}], ",", 
           RowBox[{"Joined", "\[Rule]", 
             RowBox[{"{", 
               
               RowBox[{
                "True", ",", "True", ",", "True", ",", "True", ",", "True"}], 
               "}"}]}], ",", 
           RowBox[{"LabelStyle", "\[Rule]", 
             RowBox[{"{", "}"}]}], ",", 
           RowBox[{"LegendLayout", "\[Rule]", "\"Column\""}], ",", 
           RowBox[{"LegendMarkers", "\[Rule]", 
             RowBox[{"{", 
               RowBox[{
                 RowBox[{"{", 
                   RowBox[{"\"\[FilledCircle]\"", ",", "8.96`"}], "}"}], ",", 
                 
                 RowBox[{"{", 
                   RowBox[{"\"\[FilledSquare]\"", ",", "8.96`"}], "}"}], ",", 
                 
                 RowBox[{"{", 
                   RowBox[{"\"\[FilledDiamond]\"", ",", "10.88`"}], "}"}], 
                 ",", 
                 RowBox[{"{", 
                   RowBox[{"\"\[FilledUpTriangle]\"", ",", "10.24`"}], "}"}], 
                 ",", 
                 RowBox[{"{", 
                   RowBox[{"\"\[FilledDownTriangle]\"", ",", "10.24`"}], 
                   "}"}]}], "}"}]}]}], "]"}]& ), Editable -> True], 
     TraditionalForm], TraditionalForm]},
  "Legended",
  DisplayFunction->(GridBox[{{
      TagBox[
       ItemBox[
        PaneBox[
         TagBox[#, "SkipImageSizeLevel"], Alignment -> {Center, Baseline}, 
         BaselinePosition -> Baseline], DefaultBaseStyle -> "Labeled"], 
       "SkipImageSizeLevel"], 
      ItemBox[#2, DefaultBaseStyle -> "LabeledLabel"]}}, 
    GridBoxAlignment -> {"Columns" -> {{Center}}, "Rows" -> {{Center}}}, 
    AutoDelete -> False, GridBoxItemSize -> Automatic, 
    BaselinePosition -> {1, 1}]& ),
  Editable->True,
  InterpretationFunction->(RowBox[{"Legended", "[", 
     RowBox[{#, ",", 
       RowBox[{"Placed", "[", 
         RowBox[{#2, ",", "After"}], "]"}]}], "]"}]& )]], "Output",
 CellChangeTimes->{
  3.603577234411991*^9, 3.603577282899432*^9, {3.603577341334216*^9, 
   3.60357738505243*^9}, 3.603577467066897*^9, 3.60357751809649*^9, 
   3.603577568790449*^9, 3.603577609656659*^9, {3.6035776706177673`*^9, 
   3.603577680237311*^9}, 3.603579417164961*^9, 3.603579481243585*^9, {
   3.603580978883589*^9, 3.6035809883924913`*^9}, 3.603643871344652*^9, 
   3.603671975728715*^9, 3.603703702130927*^9, 3.617811584046809*^9, 
   3.617815473542266*^9, 3.617816152322382*^9, 3.617816186075383*^9, 
   3.6178162355784082`*^9, 3.617816273494383*^9}]
}, {2}]],

Cell["\<\
Now you conduct your poll of 20 people and 14 of them say they\
\[CloseCurlyQuote]ve encountered corruption. You can use this small sample to \
revise your initial probabilities about the actual rate of corruption.

Let\[CloseCurlyQuote]s see how the probability that the corruption level is \
70% is changed by this evidence. Remember it used to be at 0.2. Has the \
evidence increased this probability or decreased it? \
\>", "Text",
 CellChangeTimes->{{3.603581269028327*^9, 3.60358139170651*^9}, {
  3.603581698360815*^9, 3.603581754078833*^9}, {3.6035818834919233`*^9, 
  3.603581976703341*^9}}],

Cell["Here are the usual Bayesian manipulations....", "Text",
 CellChangeTimes->{{3.603659004325037*^9, 3.6036590205473022`*^9}}],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"prob14given70", " ", "=", " ", 
  RowBox[{
   RowBox[{
    RowBox[{"likelihood2", "[", 
     RowBox[{"0.7", ",", "20"}], "]"}], "[", 
    RowBox[{"[", "14", "]"}], "]"}], "[", 
   RowBox[{"[", "2", "]"}], "]"}]}]], "Input",
 CellChangeTimes->{{3.6035821651031227`*^9, 3.60358225359132*^9}}],

Cell[BoxData["0.182`"], "Output",
 CellChangeTimes->{{3.603582232520137*^9, 3.603582264557086*^9}, 
   3.603643871671235*^9, 3.603671976056509*^9, 3.603703702454855*^9, 
   3.617811584307898*^9, 3.6178154738007793`*^9}]
}, Open  ]],

Cell[BoxData[
 RowBox[{
  RowBox[{"prob70", " ", "=", " ", "0.2"}], ";"}]], "Input",
 CellChangeTimes->{{3.603582283876939*^9, 3.6035822900721817`*^9}}],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"prob14of20", " ", "=", " ", 
  RowBox[{"Total", "[", 
   RowBox[{
    RowBox[{
     RowBox[{"(", 
      RowBox[{
       RowBox[{
        RowBox[{
         RowBox[{"likelihood2", "[", 
          RowBox[{"#", ",", "20"}], "]"}], "[", 
         RowBox[{"[", "14", "]"}], "]"}], "[", 
        RowBox[{"[", "2", "]"}], "]"}], " ", "*", " ", "0.2"}], ")"}], " ", 
     "&"}], " ", "/@", " ", 
    RowBox[{"Range", "[", 
     RowBox[{"0.9", ",", "0.5", ",", 
      RowBox[{"-", "0.1"}]}], "]"}]}], "]"}]}]], "Input",
 CellChangeTimes->{{3.6035823240317717`*^9, 3.603582458127603*^9}}],

Cell[BoxData["0.0862`"], "Output",
 CellChangeTimes->{3.603582464830633*^9, 3.603643872840217*^9, 
  3.603671977214231*^9, 3.6037037036246567`*^9, 3.617811585419528*^9, 
  3.6178154748955717`*^9}]
}, {2}]],

Cell["\<\
...which result in a revised probability for our 70% corruption hypothesis.\
\>", "Text",
 CellChangeTimes->{{3.6036590263950653`*^9, 3.6036590560659647`*^9}}],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"prob70given14of20", " ", "=", " ", 
  RowBox[{
   RowBox[{"(", 
    RowBox[{"prob14given70", " ", "*", " ", "prob70"}], ")"}], "/", 
   "prob14of20"}]}]], "Input",
 CellChangeTimes->{{3.603582492474091*^9, 3.603582556934239*^9}}],

Cell[BoxData["0.42227378190255227`"], "Output",
 CellChangeTimes->{3.603582559688489*^9, 3.60364387294866*^9, 
  3.6036719772922773`*^9, 3.603703703724298*^9, 3.617811585583275*^9, 
  3.61781547504397*^9}]
}, {2}]],

Cell["\<\
We see that the probability that corruption is 70% has increased from the \
prior level of 0.2 -- that\[CloseCurlyQuote]s quite a jump for a small sample \
of just 20. But given this evidence, what has happened to the priority of \
corruption being 90%? Let\[CloseCurlyQuote]s find out.\
\>", "Text",
 CellChangeTimes->{{3.603582664759604*^9, 3.6035826808706017`*^9}, {
  3.603582718431575*^9, 3.603582758286021*^9}, {3.6035834523672047`*^9, 
  3.603583474324398*^9}, {3.6035835052839212`*^9, 3.603583507795649*^9}, {
  3.6036590736951923`*^9, 3.603659075230706*^9}, {3.6036720661420317`*^9, 
  3.603672072207005*^9}}],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"prob14given90", " ", "=", " ", 
  RowBox[{
   RowBox[{
    RowBox[{"likelihood2", "[", 
     RowBox[{"0.9", ",", "20"}], "]"}], "[", 
    RowBox[{"[", "14", "]"}], "]"}], "[", 
   RowBox[{"[", "2", "]"}], "]"}]}]], "Input",
 CellChangeTimes->{{3.6035835311650352`*^9, 3.60358355997633*^9}}],

Cell[BoxData["0.007`"], "Output",
 CellChangeTimes->{3.603583560741961*^9, 3.603643873166779*^9, 
  3.603671977501124*^9, 3.603703703931315*^9, 3.617811585788034*^9, 
  3.617815475248262*^9}]
}, {2}]],

Cell[BoxData[
 RowBox[{
  RowBox[{"prob90", " ", "=", " ", "0.2"}], ";"}]], "Input",
 CellChangeTimes->{{3.6035835749563923`*^9, 3.603583582086111*^9}}],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"prob90given14of20", " ", "=", " ", 
  RowBox[{
   RowBox[{"(", 
    RowBox[{"prob14given90", " ", "*", " ", "prob90"}], ")"}], " ", "/", " ", 
   "prob14of20"}]}]], "Input",
 CellChangeTimes->{{3.603583747389669*^9, 3.6035837923101873`*^9}, {
  3.603583824985363*^9, 3.603583835238228*^9}}],

Cell[BoxData["0.01624129930394432`"], "Output",
 CellChangeTimes->{3.603583836551182*^9, 3.603643873433496*^9, 
  3.603671977550259*^9, 3.603703703980681*^9, 3.617811585833373*^9, 
  3.617815475298649*^9}]
}, {2}]],

Cell["\<\
The probability that corruption is at 90% has dropped to about a tenth of its \
prior value. When uncertainty is large to begin with, it only takes a small \
amount of data to make large reductions in uncertainty. (That\
\[CloseCurlyQuote]s one of the counter-intuitive lessons about dealing with \
uncertainty.)

Error correction methods for crowd sourced content at sites like Foursquare \
and Yelp (and aymta.com) use similar Bayesian updating techniques. These can \
also be used in the monitoring and evaluation of initiatives.\
\>", "Text",
 CellChangeTimes->{{3.603583891135873*^9, 3.60358390253333*^9}, {
  3.603644156789392*^9, 3.6036442547784843`*^9}, {3.603659091823443*^9, 
  3.6036590961883087`*^9}, {3.6036632271018143`*^9, 3.6036633007695436`*^9}, {
  3.603663760459*^9, 3.603663766070957*^9}, {3.603699574324177*^9, 
  3.603699633176281*^9}, {3.604267520723103*^9, 3.604267527480304*^9}}]
}, Open  ]],

Cell[CellGroupData[{

Cell["Creative Prediction", "Section",
 CellChangeTimes->{{3.603650522998423*^9, 3.603650534968734*^9}, {
  3.6036510885711937`*^9, 3.6036510950149384`*^9}}],

Cell["\<\
Let\[CloseCurlyQuote]s say that government operatives use a number of \
different types of signals to communicate. You\[CloseCurlyQuote]d like to \
make a complete catalog of these signals. But you don\[CloseCurlyQuote]t know \
how many different types of signals there are. So you begin observing and \
listing the ones you see. How many observations would you need to make before \
you can be quite sure that you\[CloseCurlyQuote]ve seen all the different \
types of signals there are?

This seems like such an open-ended problem. Is there a way to make progress \
on it? Some simulation will help us see an underlying pattern here that \
remains otherwise hidden. \
\>", "Text",
 CellChangeTimes->{{3.603660257523527*^9, 3.603660389992797*^9}, {
  3.603660453541397*^9, 3.603660481363433*^9}, {3.603660516238599*^9, 
  3.603660645068822*^9}, {3.6036606974977913`*^9, 3.6036607630360107`*^9}, {
  3.6036613673182*^9, 3.603661406465087*^9}, {3.603661536424951*^9, 
  3.603661617478146*^9}, {3.603699703320031*^9, 3.603699711052105*^9}, {
  3.6178113579805813`*^9, 3.617811380952649*^9}}],

Cell[BoxData[
 RowBox[{
  RowBox[{
   RowBox[{"catsUncovered", "[", 
    RowBox[{"nCategories_", ",", " ", "nObservations_"}], "]"}], ":=", " ", 
   RowBox[{"Module", "[", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{
       RowBox[{"nRequirements", " ", "=", " ", "10000"}], ",", " ", 
       "\[IndentingNewLine]", 
       RowBox[{"(*", " ", 
        RowBox[{
         RowBox[{"catsUncovered", " ", "is", " ", "the", " ", "main", " ", 
          RowBox[{"function", ".", " ", "For"}], " ", "a", " ", "given", " ", 
          "number", " ", "of", " ", "categories", " ", "and", " ", "a", " ", 
          "given", " ", "number", " ", "of", " ", "observations"}], ",", " ", 
         
         RowBox[{
         "how", " ", "many", " ", "categories", " ", "would", " ", "you", " ",
           "expect", " ", "to", " ", 
          RowBox[{"observe", "?", " ", "What"}], " ", "percentage", " ", "of",
           " ", "the", " ", "categories", " ", "does", " ", "this", " ", 
          RowBox[{"constitute", "?", " ", "The"}], " ", "function", " ", 
          "simulates", " ", "a", " ", "number", " ", "of", " ", "trials", " ",
           "and", " ", "takes", " ", "the", " ", "mean", " ", "value", " ", 
          "of", " ", "the", " ", "categories", " ", "uncovered", " ", "as", 
          " ", "the", " ", 
          RowBox[{"answer", ".", " ", "It"}], " ", "also", " ", "produces", 
          " ", "all", " ", "the", " ", "usual", " ", "statistics", " ", "on", 
          " ", "the", " ", 
          RowBox[{"trials", " ", "--"}], " ", "stddev"}], ",", " ", 
         "quartiles", ",", " ", 
         RowBox[{
          RowBox[{"etc", ".", " ", "Each"}], " ", "set", " ", "of", " ", 
          "trials", " ", "is", " ", "set", " ", "to", " ", "be", " ", 
          "nRequirements", " ", 
          RowBox[{"long", ".", " ", "The"}], " ", "idea", " ", "is", " ", 
          "that", " ", "the", " ", "total", " ", "number", " ", "of", " ", 
          "requirements", " ", "will", " ", "be", " ", "some", " ", "largish",
           " ", "number"}], ",", " ", 
         RowBox[{"say", " ", "10"}], ",", 
         RowBox[{"000.", " ", "Within", " ", "these", " ", "requirements"}], 
         ",", " ", 
         RowBox[{
         "the", " ", "categories", " ", "will", " ", "be", " ", "scattered", 
          " ", 
          RowBox[{"randomly", "."}]}]}], " ", "*)"}], "\[IndentingNewLine]", 
       RowBox[{"nTrials", " ", "=", " ", "50"}], ",", "\[IndentingNewLine]", 
       RowBox[{"seedRandomFlag", " ", "=", " ", "0"}], ",", 
       "\[IndentingNewLine]", "series", ",", " ", "\[IndentingNewLine]", 
       "obs", ",", " ", "\[IndentingNewLine]", "nCatsNotFound", ",", " ", 
       "\[IndentingNewLine]", "nCatsFound", ",", " ", "\[IndentingNewLine]", 
       "percentCatsFound", ",", "\[IndentingNewLine]", "percentStats", ",", 
       "\[IndentingNewLine]", "numStats", ",", "\[IndentingNewLine]", "mean", 
       ",", " ", "stddev", ",", " ", "quartiles", ",", " ", "iqrange", ",", 
       " ", "min", ",", " ", "max"}], " ", "}"}], ",", "\[IndentingNewLine]", 
     
     RowBox[{"(*", " ", 
      RowBox[{
       RowBox[{"Output", " ", "is", " ", "the", " ", "2"}], "-", 
       RowBox[{
       "tuple", " ", "of", " ", "statistics", " ", "for", " ", "the", " ", 
        "mean", " ", "percentage", " ", "of", " ", "categories", " ", 
        "uncovered", " ", "and", " ", "the", " ", "mean", " ", "number", " ", 
        "of", " ", "categories", " ", "uncovered"}]}], " ", "*)"}], 
     "\[IndentingNewLine]", 
     RowBox[{"(*", " ", 
      RowBox[{"generate", " ", "the", " ", "series", " ", "nTrials", " ", 
       RowBox[{"times", " ", "--"}], " ", "categories", " ", "randomly", " ", 
       "occurring", " ", "in", " ", "nRequirements"}], " ", "*)"}], 
     "\[IndentingNewLine]", 
     RowBox[{"(*", " ", 
      RowBox[{
      "Set", " ", "SeedRandom", " ", "to", " ", "make", " ", "sure", " ", 
       "that", " ", "the", " ", "same", " ", "series", " ", "is", " ", "used",
        " ", "in", " ", "all", " ", 
       RowBox[{"trials", " ", "--"}], " ", 
       RowBox[{"i", ".", "e", ".", " ", "there"}], " ", "is", " ", 
       "essentialy", " ", "only", " ", "1", " ", "trial"}], " ", "*)"}], 
     "\[IndentingNewLine]", 
     RowBox[{
      RowBox[{"If", "[", 
       RowBox[{
        RowBox[{"seedRandomFlag", " ", "\[Equal]", " ", "1"}], ",", 
        RowBox[{"SeedRandom", "[", "1", "]"}]}], "]"}], ";", 
      "\[IndentingNewLine]", 
      RowBox[{"series", " ", "=", " ", 
       RowBox[{"Table", "[", 
        RowBox[{
         RowBox[{"RandomInteger", "[", 
          RowBox[{
           RowBox[{"{", 
            RowBox[{"1", ",", " ", "nCategories"}], "}"}], ",", " ", 
           "nRequirements"}], "]"}], ",", " ", 
         RowBox[{"{", "nTrials", "}"}]}], "]"}]}], ";", "\[IndentingNewLine]", 
      RowBox[{"(*", " ", 
       RowBox[{
       "Take", " ", "the", " ", "first", " ", "nObservations", " ", "for", 
        " ", "each", " ", "trial"}], " ", "*)"}], "\[IndentingNewLine]", 
      RowBox[{"obs", " ", "=", " ", 
       RowBox[{
        RowBox[{
         RowBox[{"Take", "[", 
          RowBox[{"#", ",", " ", "nObservations"}], "]"}], " ", "&"}], " ", "/@",
         " ", "series"}]}], ";", "\[IndentingNewLine]", 
      RowBox[{"(*", " ", 
       RowBox[{
       "Find", " ", "the", " ", "number", " ", "of", " ", "categories", " ", 
        "that", " ", "are", " ", "NOT", " ", "present", " ", "in", " ", "the",
         " ", "obs"}], " ", "*)"}], "\[IndentingNewLine]", 
      RowBox[{"nCatsNotFound", " ", "=", " ", 
       RowBox[{
        RowBox[{
         RowBox[{"Length", "[", 
          RowBox[{"Complement", "[", 
           RowBox[{
            RowBox[{"Range", "[", "nCategories", "]"}], ",", " ", "#"}], 
           "]"}], "]"}], " ", "&"}], " ", "/@", " ", "obs"}]}], ";", 
      "\[IndentingNewLine]", 
      RowBox[{"(*", " ", 
       RowBox[{
       "The", " ", "number", " ", "of", " ", "categories", " ", "found", " ", 
        "is", " ", "total", " ", "categories", " ", "minus", " ", 
        "categories", " ", "not", " ", "found"}], " ", "*)"}], 
      "\[IndentingNewLine]", 
      RowBox[{"nCatsFound", " ", "=", " ", 
       RowBox[{
        RowBox[{
         RowBox[{"nCategories", " ", "-", " ", "#"}], " ", "&"}], " ", "/@", 
        " ", "nCatsNotFound"}]}], ";", "\[IndentingNewLine]", 
      RowBox[{"(*", " ", 
       RowBox[{
       "Percentage", " ", "of", " ", "categories", " ", "found", " ", "to", 
        " ", "total", " ", "number", " ", "of", " ", "categories"}], " ", 
       "*)"}], "\[IndentingNewLine]", 
      RowBox[{"percentCatsFound", " ", "=", " ", 
       RowBox[{
        RowBox[{
         RowBox[{"N", "[", 
          RowBox[{"#", "/", "nCategories"}], "]"}], " ", "&"}], " ", "/@", 
        " ", "nCatsFound"}]}], ";", "\[IndentingNewLine]", 
      RowBox[{"(*", " ", 
       RowBox[{
       "percentCatsFound", " ", "statistics", " ", "for", " ", "the", " ", 
        "trials"}], " ", "*)"}], "\[IndentingNewLine]", 
      RowBox[{"percentStats", " ", "=", " ", 
       RowBox[{
        RowBox[{"{", 
         RowBox[{
         "mean", ",", " ", "stddev", ",", " ", "quartiles", ",", " ", 
          "iqrange", ",", " ", "min", ",", " ", "max"}], "}"}], " ", "=", " ", 
        RowBox[{
         RowBox[{
          RowBox[{"#", "[", "percentCatsFound", "]"}], " ", "&"}], " ", "/@", 
         " ", 
         RowBox[{"{", 
          RowBox[{
          "Mean", ",", " ", "StandardDeviation", ",", " ", "Quartiles", ",", 
           " ", "InterquartileRange", ",", " ", "Min", ",", " ", "Max"}], 
          "}"}]}]}]}], ";", "\[IndentingNewLine]", 
      RowBox[{"(*", " ", 
       RowBox[{
       "number", " ", "of", " ", "categories", " ", "found", " ", 
        "statistics", " ", "for", " ", "the", " ", "trials"}], " ", "*)"}], 
      "\[IndentingNewLine]", 
      RowBox[{"numStats", " ", "=", " ", 
       RowBox[{
        RowBox[{"{", 
         RowBox[{
         "mean", ",", " ", "stddev", ",", " ", "quartiles", ",", " ", 
          "iqrange", ",", " ", "min", ",", " ", "max"}], "}"}], " ", "=", " ", 
        RowBox[{
         RowBox[{
          RowBox[{"N", "[", 
           RowBox[{"#", "[", "nCatsFound", "]"}], "]"}], " ", "&"}], " ", "/@",
          " ", 
         RowBox[{"{", 
          RowBox[{
          "Mean", ",", " ", "StandardDeviation", ",", " ", "Quartiles", ",", 
           " ", "InterquartileRange", ",", " ", "Min", ",", " ", "Max"}], 
          "}"}]}]}]}], ";", "\[IndentingNewLine]", 
      RowBox[{"{", 
       RowBox[{"percentStats", ",", " ", "numStats"}], "}"}]}]}], 
    "\[IndentingNewLine]", "]"}]}], ";"}]], "Input",
 CellChangeTimes->{{3.57005596084134*^9, 3.5700560531876216`*^9}, {
   3.5700560859994984`*^9, 3.5700562620115657`*^9}, {3.570056299882732*^9, 
   3.570056490643643*^9}, {3.570056552431177*^9, 3.5700565994258647`*^9}, {
   3.570056870457367*^9, 3.5700569325989213`*^9}, {3.5700571349984975`*^9, 
   3.5700571698434906`*^9}, {3.5700581153425703`*^9, 
   3.5700582602848606`*^9}, {3.570058323134455*^9, 3.5700583778285837`*^9}, {
   3.5700584407291813`*^9, 3.570058675982637*^9}, {3.5700588246711416`*^9, 
   3.570058827715316*^9}, 3.5700590605906353`*^9, 3.570059121748133*^9, {
   3.57005920194372*^9, 3.570059203372802*^9}, {3.570059253061644*^9, 
   3.5700592634672394`*^9}, {3.570059322438612*^9, 3.5700593623618956`*^9}, {
   3.570059495298499*^9, 3.570059497482624*^9}, {3.570059545998399*^9, 
   3.570059547352476*^9}, {3.570059587599778*^9, 3.5700595942511587`*^9}, {
   3.570136624323557*^9, 3.5701366393514166`*^9}, {3.5701367726730423`*^9, 
   3.5701369464329805`*^9}, {3.570137008998559*^9, 3.570137092821353*^9}, {
   3.5701371293844447`*^9, 3.5701371339217043`*^9}, {3.570137369160159*^9, 
   3.5701373702152195`*^9}, {3.5701374518638897`*^9, 
   3.5701374542590265`*^9}, {3.570137601621455*^9, 3.5701376131871166`*^9}, {
   3.570137914943376*^9, 3.570137924245908*^9}, {3.5701380276128206`*^9, 
   3.5701380312640295`*^9}, {3.5701380685881643`*^9, 
   3.5701381151048245`*^9}, {3.5701381526179705`*^9, 
   3.5701381552841225`*^9}, {3.570139812907933*^9, 3.570139813944993*^9}, {
   3.5701414666985245`*^9, 3.5701414708177605`*^9}, {3.570141531949257*^9, 
   3.5701415328913107`*^9}, {3.570292457884916*^9, 3.570292463601243*^9}, 
   3.570293227169916*^9, {3.570293861327188*^9, 3.570293862886277*^9}, {
   3.570293958548749*^9, 3.570293958717758*^9}, {3.5702942456501703`*^9, 
   3.5702942675684237`*^9}, {3.5702943670991163`*^9, 
   3.5702943683561883`*^9}, {3.5702944342059546`*^9, 3.570294435185011*^9}, 
   3.60366095901327*^9, {3.603662401068082*^9, 3.603662431228979*^9}}],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", " ", 
   RowBox[{
   "Percentage", " ", "and", " ", "number", " ", "of", " ", "categories", " ",
     "uncovered", " ", "in", " ", "n", " ", "observations", " ", 
    RowBox[{"(", 
     RowBox[{"second", " ", "argument"}], ")"}], "if", " ", "there", " ", 
    "are", " ", "a", " ", "total", " ", "of", " ", "c", " ", "categories", 
    " ", 
    RowBox[{"(", 
     RowBox[{"first", " ", "argument"}], ")"}]}], " ", "*)"}], 
  "\[IndentingNewLine]", 
  RowBox[{"catsUncovered", "[", 
   RowBox[{"20", ",", " ", "20"}], "]"}]}]], "Input",
 CellChangeTimes->{{3.5701395774534664`*^9, 3.570139583344803*^9}, {
  3.570293192230918*^9, 3.570293220462533*^9}, {3.570623078616391*^9, 
  3.57062314619571*^9}, {3.603660938848365*^9, 3.603660968504839*^9}}],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{
   RowBox[{"{", 
    RowBox[{"0.6279999999999998`", ",", "0.06558994447570853`", ",", 
     RowBox[{"{", 
      RowBox[{"0.6`", ",", "0.65`", ",", "0.65`"}], "}"}], ",", 
     "0.050000000000000044`", ",", "0.45`", ",", "0.8`"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"12.56`", ",", "1.311798889514171`", ",", 
     RowBox[{"{", 
      RowBox[{"12.`", ",", "13.`", ",", "13.`"}], "}"}], ",", "1.`", ",", 
     "9.`", ",", "16.`"}], "}"}]}], "}"}]], "Output",
 CellChangeTimes->{
  3.57013958451187*^9, 3.5701396601291947`*^9, 3.570293172443786*^9, 
   3.570293892391965*^9, 3.5702939643830824`*^9, 3.570294442390423*^9, 
   3.5706230606139593`*^9, 3.5706231473345118`*^9, {3.6036609170823393`*^9, 
   3.603660969567766*^9}, 3.603671977619631*^9, 3.6037037040957737`*^9, 
   3.6178115859868507`*^9, 3.617815475381734*^9}]
}, {2}]],

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", " ", 
   RowBox[{
    RowBox[{"Get", " ", "data", " ", "for", " ", "tables", " ", "and", " ", 
     RowBox[{"graphs", " ", "--"}], " ", "nCategories", " ", "go", " ", 
     "from", " ", "20"}], ",", " ", "40", ",", " ", "...", ",", " ", 
    RowBox[{
    "100", " ", "and", " ", "nObservations", " ", "go", " ", "from", " ", "1",
      " ", "to", " ", "200.", " ", "For", " ", "each", " ", "data", " ", 
     "point"}], ",", " ", 
    RowBox[{
    "the", " ", "mean", " ", "percentage", " ", "categories", " ", 
     "uncovered", " ", "and", " ", "the", " ", "mean", " ", "number", " ", 
     "of", " ", "categories", " ", "uncovered", " ", "is", " ", "output"}]}], 
   " ", "*)"}], "\[IndentingNewLine]", 
  RowBox[{
   RowBox[{"t", " ", "=", " ", 
    RowBox[{"Table", "[", 
     RowBox[{
      RowBox[{"Flatten", "[", 
       RowBox[{"{", 
        RowBox[{"i", ",", " ", "j", ",", " ", 
         RowBox[{"catsUncovered", "[", 
          RowBox[{"i", ",", "j"}], "]"}]}], " ", "}"}], "]"}], ",", 
      RowBox[{"{", 
       RowBox[{"i", ",", " ", "20", ",", " ", "100", ",", " ", "20"}], "}"}], 
      ",", " ", 
      RowBox[{"{", 
       RowBox[{"j", ",", " ", "1", ",", " ", "500"}], "}"}]}], "]"}]}], 
   ";"}]}]], "Input",
 CellChangeTimes->{{3.5701412278878655`*^9, 3.5701413189040713`*^9}, {
  3.570292392903199*^9, 3.5702923943132796`*^9}, {3.5702946879984713`*^9, 
  3.570294689415552*^9}, {3.617812790853026*^9, 3.617812792596979*^9}, {
  3.617813503602273*^9, 3.617813505977702*^9}}],

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", " ", 
   RowBox[{
    RowBox[{"Pull", " ", "just", " ", "the", " ", "category"}], ",", " ", 
    "observations", ",", " ", 
    RowBox[{"mean", " ", "percentage", " ", "uncovered"}], ",", " ", 
    RowBox[{
    "and", " ", "the", " ", "mean", " ", "number", " ", "uncovered"}]}], " ", 
   "*)"}], "\[IndentingNewLine]", 
  RowBox[{
   RowBox[{"t1", " ", "=", " ", 
    RowBox[{"Table", "[", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{
        RowBox[{
         RowBox[{
          RowBox[{"t", "[", 
           RowBox[{"[", "i", "]"}], "]"}], "[", 
          RowBox[{"[", "j", "]"}], "]"}], "[", 
         RowBox[{"[", "1", "]"}], "]"}], ",", " ", 
        RowBox[{
         RowBox[{
          RowBox[{"t", "[", 
           RowBox[{"[", "i", "]"}], "]"}], "[", 
          RowBox[{"[", "j", "]"}], "]"}], "[", 
         RowBox[{"[", "2", "]"}], "]"}], ",", " ", 
        RowBox[{
         RowBox[{
          RowBox[{"t", "[", 
           RowBox[{"[", "i", "]"}], "]"}], "[", 
          RowBox[{"[", "j", "]"}], "]"}], "[", 
         RowBox[{"[", "3", "]"}], "]"}], ",", " ", 
        RowBox[{
         RowBox[{
          RowBox[{"t", "[", 
           RowBox[{"[", "i", "]"}], "]"}], "[", 
          RowBox[{"[", "j", "]"}], "]"}], "[", 
         RowBox[{"[", "11", "]"}], "]"}]}], "}"}], ",", " ", 
      RowBox[{"{", 
       RowBox[{"i", ",", " ", "1", ",", "5"}], "}"}], ",", " ", 
      RowBox[{"{", 
       RowBox[{"j", ",", " ", "1", ",", " ", "500"}], "}"}]}], "]"}]}], 
   ";"}]}]], "Input",
 CellChangeTimes->{{3.5701425360256867`*^9, 3.57014256143014*^9}, {
  3.5702924236659584`*^9, 3.5702924249910345`*^9}, {3.570294738700371*^9, 
  3.5702947402644606`*^9}, {3.617812844843402*^9, 3.617812844997881*^9}, {
  3.617813529248865*^9, 3.61781352999473*^9}, {3.6178135783016653`*^9, 
  3.6178135793189287`*^9}}],

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", " ", 
   RowBox[{"Pull", " ", "the", " ", "mean", " ", "number", " ", "uncovered"}],
    " ", "*)"}], "\[IndentingNewLine]", 
  RowBox[{
   RowBox[{"d1", " ", "=", " ", 
    RowBox[{
     RowBox[{
      RowBox[{"#", "[", 
       RowBox[{"[", 
        RowBox[{"All", ",", " ", "4"}], "]"}], "]"}], " ", "&"}], " ", "/@", 
     " ", "t1"}]}], ";"}]}]], "Input",
 CellChangeTimes->{{3.570142564631323*^9, 3.570142572361765*^9}, {
  3.5702924390848403`*^9, 3.5702924404709196`*^9}}],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"g1", " ", "=", " ", 
  RowBox[{"ListLinePlot", "[", 
   RowBox[{"d1", ",", " ", 
    RowBox[{"PlotRange", "\[Rule]", 
     RowBox[{"{", 
      RowBox[{"All", ",", " ", "All"}], "}"}]}], ",", " ", 
    RowBox[{"ImageSize", "\[Rule]", "600"}], ",", " ", 
    RowBox[{"AxesLabel", "\[Rule]", 
     RowBox[{"{", 
      RowBox[{
      "\"\<# Observations Made\>\"", ",", " ", 
       "\"\<# Categories Uncovered\>\""}], "}"}]}], ",", " ", 
    RowBox[{"GridLines", "\[Rule]", "Automatic"}], ",", " ", 
    RowBox[{"PlotLegends", " ", "\[Rule]", 
     RowBox[{"{", 
      RowBox[{
      "\"\<20 Categories\>\"", ",", " ", "\"\<40 Categories\>\"", ",", 
       "\"\<60 Categories\>\"", ",", "\"\<80 Categories\>\"", ",", 
       "\"\<100 Categories\>\""}], "}"}]}]}], "]"}]}]], "Input",
 CellChangeTimes->{{3.5700567029767876`*^9, 3.570056724404013*^9}, {
  3.5700576672779427`*^9, 3.570057669602075*^9}, {3.5700589814691095`*^9, 
  3.570058984212267*^9}, {3.5701399880779524`*^9, 3.5701399925232067`*^9}, {
  3.5701400347386217`*^9, 3.5701400490334387`*^9}, {3.5701401425987906`*^9, 
  3.5701401472500567`*^9}, {3.5701413732611804`*^9, 3.570141437117833*^9}, {
  3.570141581641099*^9, 3.5701415841092405`*^9}, {3.617811937410098*^9, 
  3.617811941782514*^9}, {3.617811972852113*^9, 3.6178119801217613`*^9}, {
  3.6178120287387733`*^9, 3.617812066049268*^9}, {3.6178121750761747`*^9, 
  3.617812189650507*^9}, {3.6178124558893223`*^9, 3.617812572869506*^9}, {
  3.617812623478531*^9, 3.61781266157409*^9}, {3.617812726230487*^9, 
  3.6178127267481623`*^9}, {3.6178128744973917`*^9, 3.6178129094103327`*^9}}],

Cell[BoxData[
 TemplateBox[{GraphicsBox[{{}, {{{}, {}, {
        Hue[0.67, 0.6, 0.6], 
        Directive[
         PointSize[0.005555555555555556], 
         RGBColor[0.368417, 0.506779, 0.709798], 
         AbsoluteThickness[1.6]], 
        LineBox[CompressedData["
1:eJxd1DusFUUcx/HRwhgSk43BhETF5SEiQVwEFR/In/cb9l4u93LhAnMvDx+o
LL4FH9PQ2LCFjRZmE6zJljQmEyxsNNmOxmJsbLDYQixslHP2P5r5brP5nN/8
5z87s3uWLVycPHe/MebP+4wZ3Yer35LejSy6fb3avOgf9YNyc+nVOxM3H5DB
mTwx4tKH1ItlcjzgYfUSzR9RPyabxxMuUeeaP6peLuN2tx9Xr9Q8V6+SS+MJ
lqlXy7ffjK7l6jUyHn51hXqtzF27dXf13Er1Ovnxnq7delJdyNPjAavU6zV/
Sv3cf32G+wb55efRFb1RFt/Y/dvlxWvUz8v3o+Vfj35B1xP9oq53rXqT7u8z
6pfkynjCmL8s9ya/90P0K9pvnfpV3Y/ozbpfz6pf0/7RW3R/o0X7F4OdyHj6
G2qzdci/ivlW3Z+Yb9P9W6/5NuTbZcP4ivl2nU9tdgzPNx/zHXpeMd+Zjnc7
df6Y79L59ZzcrmH/V8Rz2633mO8e9vfvWL8nHe/2DPNvi/V7tX/M98p4eddi
vk/PM+b7hvX/GvP9+r7EfL+eb8wPDOfXx/yAPl/MDw7n+V3MD+p5bdD8kJwf
Xb/H/JA+T8wP6/6o3WH9/mJeyp7xAail1PXF8eXwvW9S+1Lfp1g/MTzfgVg/
IX+M4guxfkL3L9ZPDO/fTKyf1POP9ZOon9R7rJ/U9zPWH9H/o1h/BOs/gv6w
mRq+p69j/ZR+v7F+Ku3np/T8Y/3RNJejw/7+EOuR+6Pp/GYa658ezuOnWD+t
70+sn9bvN9bP6PsW62E3o/8fsX5G/hq9Xndj/bFhv+/E+mPpeAd72Myifhb1
s+l6/Ky+r7H+eGo5rt9DrIf98bSfOZE+j5xIc3cind9jvJnT/4NYD7s59J/D
859MczmZzu+Q+5Pp/OZUOp+cQj3sT2ndRr2fxvpPp7lD7k+n6zE2zXOL/URu
bbqfDnlj0/4eeUBu5tEfFtjCDm7msV/zab8Am4XU+QL6I7fI3ULar8F4v5Du
d0BuzqA/LLCF3Rk8P+wxPsDmLPqfxfPDFuMd3MAeDrA5h/6wwBZ2cAN7OMDm
PPrDAtvzOH/kDezhAJvX0R8W2MIObmAPB9i8gf6wwBZ2cAN7OMDmTfSHBbaw
gxvYwwE2b6E/LLCFHdzAHg6wuYD+sMAWdnADezjA5m30hwW2sIMb2MMBNu+g
PyywhR3cwB4OsHkX/WGBLezgBvZwgM1F9IcFtrCDG9jDATZV6gzO4QIWuIQt
XMEOruEGbmEPd3CAe9hcSp3BOVzAApewhSvYwTXcwC3s4Q4OcA+b91JncA4X
sMAlbOEKdnANN3ALe7iDA9zD5v3UGZzDBSxwCVu4gh1cww3cwh7u4AD3sPkg
dQbncAELXMIWrmAH13ADt7CHOzjAPWw+TJ3BOVzAApewhSvYwTXcwC3s4Q4O
cA+bj1JncA4XsMAlbOEKdnANN3ALe7iDA9zD5uPUGZzDBSxwCVu4gh1cww3c
wh7u4AD3sPkkdQbncAELXMIWrmAH13ADt7CHOzjAPWw+TZ3BOVzAApewhSvY
wTXcwC3s4Q4OcA+by6kzOIcLWOAStnAFO7iGG7iFPdzBAe5hcyV1BudwAQtc
whauYAfXcAO3sIc7OMA9bD5LncE5XMACl7CFK9jBNdzALezhDg5wD5vPU2dw
DhewwCVs4Qp2cA03cAt7uIMD3MPmi9QZnMMFLHAJW7iCHVzDDdzCHu7gAPew
+TJ1BudwAcv//hcq77Fj
         "]]}, {
        Hue[0.9060679774997897, 0.6, 0.6], 
        Directive[
         PointSize[0.005555555555555556], 
         RGBColor[0.880722, 0.611041, 0.142051], 
         AbsoluteThickness[1.6]], 
        LineBox[CompressedData["
1:eJxdlluIXVcdxpdCqQRpDxi8UXXXeklbG3ebpk3TpllJ0yZNU7tncplcJsme
yzlzn9mTSVqbWl0vQRChx0dFygZ96FM54EsRhI0iglg8glAEkV0KRajIAY2I
INgz6/tH1m9eNr/51re+/3+ttdc+d89uTHY/6pz750ecGz/j3+hg+nQ+fX7M
v3n03es737xd3PFjOvruHeKd/tj2Pz4h/rR/+3fjv0+K7/L3Tr/2y5u7PivO
/I9+OP77nPiL/pXxdNcz8Zf8r27u+tBxt/gr/gs3Pph46/P3iHeJvyy+T/UZ
f83/7UP1xgdfFe+Wvkuc+wM73vlJdeB+8YN+PHriLeOHVO8D4j3+p9XYsVv8
sPr9univ6s/Fj2j+B8WP+u1ybxjv85PbgQ+JH4v+/xjvj/Xs2yN+3G+X82fj
J6Q/LD7g/zVerpvGT8a82/aKD8b9mjH2qu+RyMHH9VoRu0N+rO54x/RDcb8+
86j0w3F/T+yTfvhWX/H5lN9ejp2PSX/qVp/xeUTrYfoRrZ/pT+v8mP609P3S
n9H+PC79Gb85bmhk+tF4Pl43/ajfbnfHE9KPxfX/g+nHtJ+mP6v1EIdnfW/8
977px/2e7b8D0o/7cTXTdz4p/blb+xD151S/6SdSDidUv+nPaz9Nf177eVD6
N9LxQVyZ/oLeL3F4Qf2aXmh/fGQPDoX2V9wUsd79Yjeh82f+ifh+rZt/Ip7X
H5t/Iu7Xovkn4/n7r/kndZ+YfzKO/6v5J+N+/sX8J7X+h+Q/qffH/Cd1PqQ3
J+N5nhK7U/E8fM/8p1S/OJyK5+G75j8V835m/tM6v+Y/nc4XpP/a/Kdjv6+a
/4zOt/nB4Uys5+/mPxPP4/2H5Z+KecfFfir6Py4OUzo/5p/S/pn/bFyPT5n/
bOz3dvOfjf1uiZuzuj/Mfy6u7xvmP6fzYv5zMf+a+c/F9+M185/Xepn/vN4H
84t/bv7zepr/Qsz7vvkv6H40/4V4/v9k/gu6z8w/rfUx/3Ts9x/mn471/t78
0/G8/9v8F/V9Mf/FdHy4qPNoful32j14Sfep2F9Kx4dL8Xtzj/TmUjwPu81/
OfZ7l/kv6z4Xh8vx+3nY/Bjvytj/XnFWpnm+1H6Ky1Lvu81f6r4U16W+Z5aH
+VrxnOXP6HxY/ozuL8uf0fmz/Bm9n5Y/o/vZ8md0niwf87Uzel8tf1b3keXP
pvP72XS+cjb1h1ndb5Y/q/No+bM675aP+dyc7hfLn9PvE8ufS+cr5/S+WT64
BjdzyMf8bj7lbD7u3w8sfz6u38Dy5+P5+oXlg+v5dD0a+Nt5/Z6z/G5cj99a
fle/vyy/q/vT8rvI78b1+43ld3VfWH5XT8vv6v20/F7KWU/3r+X30ryyl9YT
evF7+UfL76X9NL20vran76/lL6R52YLuJ8tf0PfQ8qGHBX0PLR/zNQu6Dy0f
freI/MW0Pr+o76/lL6brFTC+XtR9aPmL8X1/z/IX037cUlpftoT+l/R7y/KX
0n4D/PVSOn+zpPvc8uF3y2l/2XJav1/G+i/re2z5y2l99XI6f7OM9V/W7zXL
X9H3x/JX0jy/gvXH+LCS1luvIB96C79b1ffG8lfT/jy4BIfVdL56Ne2vWUX+
arofbg39r6W6X9P31vIxPqyleTXGN2v6fWn5a2n9bj31Z2C/nq5PuY789XT+
eh354HYd+Rupnm2k83vo5UZaX9hI16vG+GYjrb/F/K5K6+9UaX1ZpXFH4jOv
UB/8BfSySvMrcIC/X6X11+ABxjdV2v8Q41uMH4HdZlpPB5xtpuPzTfS/ma5P
AX+5mdZTwR/g7yOvxnwDjG/AQ4xvwSPM765g/8EZOL+SzuehF+DySlpfBT2A
++D6CvYfeoP5h9Bb6COw20q5s4X+t9J+c4z34AL+EnqF+QL0Pvz1FvrH+Abj
h5i/xfgR2F1F/1fRPzgHe/gLcInxFfQA7oPrqzj/0BvwENwifwR219D/NfQP
PQd7cAEuwRU4gPvgGjwAN+AhuEU/I+juxZQ74Aycv4j9BxcYX4IrjA/Q++Aa
PAA3mG8IvQWPwO4l9P8S9h+cY7wHF+ASXIEDuA+uwQNwAx6CW/AI/bhvpnoH
nIFzsAcX4BJcgQO4D67BA3ADHoJb8AjsXk658zL2H3oO3UMvwCW4gj9A74Nr
8ADcgIfgFjwCu+spd8AZOAd7cAEuwRU4gPvgGjwAN+AhuAWPwO6VlDvgDJyD
PbgAl+AKHMB9cA0egBvwENyCR2D3rZQ74Aycgz24AJfgChzAfXANHoAb8BDc
gkdg92rKHXAGzsEeXIBLcAUO4D64Bg/ADXgIbsEjsPt2yh1wBs7BHlyAS3AF
DuA+uAYPwA14CG7BI7D7TsodcAbOwf7//D/py/0Q
         "]]}, {
        Hue[0.1421359549995791, 0.6, 0.6], 
        Directive[
         PointSize[0.005555555555555556], 
         RGBColor[0.560181, 0.691569, 0.194885], 
         AbsoluteThickness[1.6]], 
        LineBox[CompressedData["
1:eJxdWGuIZFcRvgYkEgJpcVEjce0ksiaaxDabx2aTyZ59zr63Z/YxO7uzs3fe
PdPzuP2Y987mIgRBhLQQCBGRlogIQmiQQBCEy4oIotiCEASRGwQRVqRBIxIQ
TU99H1Jf/xm+qfPVV1XnVJ3T/fDkyvDMPVEU/fNjUdT/a5/eIf83Cm8Pvr+1
5+3/An8ivPdWMnDfe/cGw4Vw3+4/HgDeE8Zeu/PBY2OfAv5s6LMH3/808EPh
8d0FnwMuhlfvDr2799XPAz8CvSLwF6H3CPC+8Jtf9z+PAj8W9uwS9gF/OezK
v/Yl4CfC7O7nceCn4I+4FPbvfp4A/lqoDfQzehL4afj7KvD+8K+P0J3VEvAz
yI/4WdTjaeDnEC/x84hnP/ABxEP8QvhbvxzVZ4APmv+JZ4FfRLzPAb9k+CfE
A+Hn/XDvEL+MeJ8HPgT9A8AhnOwL/BI4Dcj3BdgP2348dRD2w+E7b/Y/wNER
y+/si7Afsf38+EuwHzW9v9B+NOyWd2AA9mNhu1++D7E+PWb1+ybtx+HvEOzH
YX8Z9hPm72e0nwhf6BO+BxwNIr4A+6D5Ow4cnbT6/YP2k3Y+/0r7KdT7MOyn
ED9wdDoMf7Rdd4doP4360X7G8G9pP2P12HcE9rPmvwGcnkU/0H7O9v/7tJ+z
/P5E+3nb7yNHYT8Pf8DRBdO/QPuF8IP+cXuL9rL16x+BQ9n83XMM68u2/3+H
PSvj/MAeDdn+bQGHIfQ/+UPWn78HzobQD+QPWz3/Q/6w8R86Dv6w5TsOnAmO
LuL/wOGinc8/kH/Rzv8H5F80/t4T4F+y/fskcLiEegGnl6wf75IP/GPyL+O8
kH8Z54/8yxbPg4PgX8b5A46uoL+BwxWcV+D0CuYb+Vcs3t+RPxJ2j98G+SPI
5yT4Ixbfj8gfwXyCPbqK/iMf+CD5V5Ef+VdtXo2QP+pxGMX+kz+K+ICzUcv/
F+Rfw/wi/xr6/RT416w+DwNn12w+98i/bvPrXtjDdfQX+dfRr+RfR38AR2MW
3wHyx6zer5M/hv4jf0z4N0zvh+TfQH+RfwPnh/wbuN/IH0e/nQZ/HP0FnI5j
fgNn49hf4Ogm7gvyb1o9Bsm/iflF/k3sB/kx+he4GNt+vkF/guMY9aD/GPcN
cDu2/elQD/4/BM5ji+8b1J/A/p2B/gT6EzhM4LwCxxPgAaeC2xPoN+BswvZj
CjifwLwGjiZtvy9Rf9Lbw6Tnx1j/OvUn0e/Un8T8pv4k6kH9SbwXqD+F80P9
Kcx36k9Z/X5K/SncV9SfEv0pzGvqT2G+Ux/r956F/rSdn68AF6ftfLxL/Wmc
T9jjacwv4HTa+2tPo9+AM+Hn07afp6k/g3lL/RnPDzNeL57Beaf+jO33KPVn
0M/Un0H/UB/r36T+LO4T6s+i/6g/i/2n/qyvVzqL/aH+LN6P1J/FeaH+LOYd
9edwHqg/h/lA/Tm8D6kP/Ab159BP1J/D+aH+HOYR9ecwj6hfwfuJ+hUfX6jg
PFG/gvuA+hXc59Sv4L46B/0K9h84r6DfgaN5i+/P1J/HfKf+vF8fz3v/6bzp
3w/cnrfz9AD15zEPqD8PXeovYF4CFxdwnoHDAvab+gu4H6m/gPNJ/QXbn89Q
f8HyKVF/wccTVS3/R6lfRX9Qv4r3APWr+P5E/aroV3H/Ur+KeUb9Kt7z1F+U
/BfRj9RfxP1OfbGni7gPqb/o480E58Dfov6Snb8d6i/5+MMS+p36S95fuuT9
tZcsv2XqL+G+o/6S1a9C/WWPi8voX+ov2/n9OvWXMR+ov4x+pP6yjydbtvp/
m/riL1pB/1J/Bfcx9VfwfYf6Kz6+dMX7b69Y/b5L/RWvl4u/KPG4kHh+MfH+
S7I+JJgvwOUE84vxJrifgJME85DxJ3gPArcSzGfmI/46CeYT8xN7V/TyBO9f
4J7Yoxre88y/hvuP+Qsu1aDL/Gtevyw4ruH7D/MXe1qz++kd5l+z+v6K+ddw
vzD/mq9XVsP8Zf6yPhd7r4b3GvOv+3gKdR9vse7rXarj9wLmX8f3EeYvOK7j
fmH+4j+t+3q26pK/2DuCszreV8y/ju9/zL/u8+2JPWr4+hQakr/YS2IPDe+v
3PD1iYWfNPB7APNv4D5l/g28B5h/w9ez08B9yfwb+H2F+Qs/l3h7DV/fqOlx
oYn3A/Nvev1S0+cbml6v3PTxxbI+afp40ybeI8y/6evTbuL9wfwlvqzp69cV
/Vz895p4PzP/VR9/YdXzi6tev7SK9wnzF35ZcLzq9RPxn676eFrCb4teR/jZ
quy/6OVi74m/aM2vL6z5ehbXvF5pzdcjrHl/ZeHH4j9Zk/0Xfy1Z3xb/nTV8
n2T+Yu+Kv1z0emv4PYj5r3t+Yd3rFwWXZH1Y9/tXXvf+Y1mfrPv6pOuSv/Db
gjuCM4mvK/Hkot9b9/WLNvz6wgZ+j2P+G55f2pD9F3t5Q/IXnAhON3w8LcFt
8d/ZsPv438xf4u+K/1zW98R/tOnzLQguCi5ten7YlP3f9HrxJnTOI/9Nn0+6
6eNtiV5b9DpizwR3ZX0u/ntij7a8vbDl4y9uSf6Cg+Cy8OMtX59ky+unwm9t
+Xq1ZX1H/Geyvit6ufjvib9o2+OC4KLg0rbXD2Ivb3u9WNYn2z7eVNa3xN4W
fkdwJvpdsedi74n/6Jac/1veXrwl+Ys9CC6Lv/iW5C/rU8Et4bfF3hF/meCu
xJsL7on/aEf2X3BRcGlHzr/Yy4JjWZ8ITgW3BLcFdwRnO74+XdHPZX1vx9cr
ui37f1vyF1y67fWC2Mtij8WeiD0V3BLcvi3nX+LNZH1XcC64J/zoFcn/Fb++
KPaS4PB//D9pBNLt
         "]]}, {
        Hue[0.37820393249936934`, 0.6, 0.6], 
        Directive[
         PointSize[0.005555555555555556], 
         RGBColor[0.922526, 0.385626, 0.209179], 
         AbsoluteThickness[1.6]], 
        LineBox[CompressedData["
1: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
vEge91Pqz+N8pP68XS83j+8R1K/i+Xmc79Sv8mnmZf94lvrz0h/fof68XY92
XvbPp6k/j/sy9edl/n5A/QXpx9epv4D3JPUX7HpECna+RuFoAfcR6i9I/j+m
/gLu39RfsPU0CqL/Z9RfsOerpfIJCnZ92wXc96lf5bNckHq9S/1F3E+ov4jv
T9RftONHinZ+RuFoUfr3Deov2vX2irIeX6X+ovTD+9RftPNrqnxaii8o4r5G
/Spep4hf6i/a8+uUbP9Qya5HuGTPX6Rk6zElO7+oiueW7Hy8Et7X1K9wo4T7
JPUrvpbKLyjhPUb9Jan/76m/hO8/1K/iO2W836i/bOsNl/E9h/rLdj1NGfdd
6lfx3LLN56l4flnuV7+i/rKdb1PFbykcKNwu2/XslO35WC7L+viQ+ivS33+g
/oqdf7hi1zOi7KaC9zP1V/A9hPor+F5N/Qr7FTv/hvJvKv6W4g8q+P8P6lfx
O8q+rOI5VXz/pf6q0l+19UWqsn4+ov6qXb9o1Y7vVu16ewr7Cjeqdj80q7ae
luILlH9b8XeUfVnl79TseodqNl+4ZtcjUrPraWp2/aI1vNeoX9k95e/X7Hwb
yt5U+bRqeD9Sv8JtNb5Tk/3i79RfU/rrtn+obucbVvZI3a6/qdt6o3W8r6m/
bvN5daVfjW8ovqbKp1XHe5P6FX9bxevUlX5ld5Zse2jJtoeXlH5lN0t4f1O/
srtLSr/i85fsejSW8H6nfuXfUnyBsreVvaPyX16y6+mcsPlCJ+z6hk/YeiIK
mxOfxPs/QZ8Syg==
         "]]}, {
        Hue[0.6142719099991583, 0.6, 0.6], 
        Directive[
         PointSize[0.005555555555555556], 
         RGBColor[0.528488, 0.470624, 0.701351], 
         AbsoluteThickness[1.6]], 
        LineBox[CompressedData["
1:eJxdmXmInVcZxr+2uBDFDjTSWmu9aTXEROOkSZqlWU72PbmTmclMkklyZ99n
7jp3v/lU2oqKHVHRFpVbtVVQ6hUVoqhcW1xwHVGpipVbCypGdIRWRVDsnff3
BM43/1yevN97nvM77/nO8mXN0PzZ0ZuDIHjxpiBo/9rf8l7/N3D+76sjvx3u
wetd1+5+8Fb0apfaverZzyRvQ99B/Hb0Xe6xR9t/b0TH3E9+3P67G32PG3jk
6ZfWDaxBv8WdfTn7ete96LX8vpXfda68+qkjz5f07+vd0edLL//LOvTb6c96
9Eb32WT7HzagO4m/A73Jrdhd24i+z600/5FO9Ga3eeVvE3oLfveht1r7925G
30970ttcu7nVT21Bb4dvK3qHW8G/9X70Thu/V2xDPwCv9C7rz1e2o3fb+P1u
B3oP/dmJ3ks9pJ1bwd/9gOnQWX+37yK+z/i+jw73ufbTq/p2E9/vVvAH9xDf
7/7abn56L/EDxvMIOjxAvRU/CI8jftDa/xg6OORWurdqH3H0+9DBYdM/VPyw
1euXih+50S/7PWLtP4sOjtLfA8SPUg90cIz+K36M8VX8uHumHX76IPHj9A8d
nHBvayf8WfET7s0rBThE/KTx/wcdnrR6fEvxU4y/4qeMb/Vh4qetvx9Ch6dt
Pi8rfsb812kczvA8OojzvqFdnPdDz8ep91HTzbj1/1PooMv43412XW6s/bf2
GPld1t4LytfzxIOz1t7v0S6iw7M2HtXj5J+9Mc6W3838RbtuxucEz3Uz3uhm
N/MVHfTY+5NBux7qqfweq8/Ok+T3MF7ooJf3Ge16bfwb6LCX+iq/l/frFPnn
7PlOtDtn6+N5dHjOxnMM3TxH/5TfR3unye+z+M3osM/mz6vOkN/n/tlO/xrx
oJ/6Enf9zH902G/+f+T5Zr+N121x8s9TL+Wft/F4HfHwPO+7/M9bfwvKv2D5
e9Dugs3Xo8q/YO/fGXTzgtU3q/yL9v6+X/kXrb1vK/8i+43yef4Lyh8wfV35
AzYet3eRP2Dz5SZ0c4D5hA4uWXwN2l2yet+p/Es2X3Yp/5LV42HlX2b9Vv5l
4/2Z8i9b/ieUf5n9SPlX7P16RvlXLP6i8q9YvV9SPs8f4D0KEtSXeCxh9bmD
uEvYerYenUiwn+g9TFi9JtB18rejmwmr/0l0K2H9+ZX8B22+fhodG7Tx/I78
B20+/VT+PP8H+Q/aeH1J/oOsf/IftP7/Rf6DVu8N3fgPUV90bIj5i3ZDzD90
Ysj6vxUdDsGPrpM/h24O2XypoVtD1F/+w7Z+fVL+w6z38h82nkX5D9v4flz+
w/DJPxJvDrNfyX/YeP4u/xHmv/wj2o0Yz8Ye/EesvbvQ4Yj59aPrI1afe9DN
EdZXdIv8AXQwSrvo2Kjxj6PdKPzy5/m6/Edt/j4k/1H2a/mPsl/Jf5T9Tf5j
Nv7PyX/M/JbkP2br4T/kP2b9/6b8eb4h/zEbr7/Jf4z9T/5j9j68thf/cdZb
dGyc9w/txplv6MQ46zk6HGc9Rtd5vhfdHLd67Ee3xu38Nyr/Cc5b8p9g/OQ/
wfoq/wnWI/lPMN/kP0G95I9uyH+C/V/+k1a/J+U/yXog/0kbry/Kf5J6yX+S
9U3+k4y//CPttybZj+U/xXor/ymr1y3n8J+y8f2F/KfIIx5OcV6TfyTenGK/
QLemrD+vRAfTnF/QsWnuE/Kf5jyFTkxTP/lPs56j69OsR/KfZn7Jf5r9Vv4z
vJ/yn+H8If8Zy0/Jf8b2lx75z/j9qc+w3sl/hvVZ/jOc5+Q/a/39vPxnOZ/K
f9b6U5T/LPuB/Gdt/X5c/rPsp/Kf5Vf+s9bfJ+Q/x3lB/nM2P74h/zmb/z+S
/xz3C/nPsb7Kf471W/5z7Ffyj8SDeT8em2d+yx/9X/nPsx7Jf577hfzn7X38
t/wjz7fmOR/IP8l60me6I0k/0LGkjf8b0J1J9k+0S3I/RceTNn4X0AnaP4JO
Jq0+3egwyXxEL9L+CXQ9aetHHN1IMh/RzaTNh9PopaTNt3eiW0n2G/Qy8TPo
IMX8F3/K1sNt4k9x/hZ/ivuq+FO8b+JPcf8TP/kPiT/l9z9M8b6IP2Xv83vE
H4k3UqzH4k/xK/6UrYcfFT/+T4o/ZfX6rvjT+Ig/bXyPiT9t9fuc+NOs9+JH
XxN/2ubLb8QfeT4ZeT5Mcz8QP/mPij9t/f+e+NOs1+JPc/8Sf5r7kfgjejlt
4/9l8Wc4j4o/w3la/Ohb+uHPcD4Sf4b3SfwZ3kfxZ/g+If6MzxNmeL/Fj98L
4s9wnhV/xubnv8RP/nPiz1i9/iR++F5P/5czNp/+J/4s+6H4s9bem3g+lmW/
En+W8wvaZbkvoeO0dyc6keU8g05mbfxegw6zrD/oxUh+PUs/0Y2sjUcHukn/
1qKXspyH0C38Nog/y3qBDnLcv9EdOe4v4s+xPok/Z/XeIv4c31fEn2P9EH/O
5tsm8edsfu8Qf479X/w5zs/iz7G/iz/H9wjxR/q3lOO+Jv5If5dpf7/4F7hv
i3+B+5r4F1h/xb/A+in+Bc6b4l+w/g6Lf8H2533iX7D155D4I+0tLnBeEX8k
3ljge4X4I3op0p8W8bz4F7iviD/P9yDx5zn/iD9v/vPiz/t8Ls/3Q/HnrZ6X
xJ/ne4X483xvFn+e58Sft/pNiT/PfVL8eavXe8WfN96c+PPcn8SPflj8efYv
8RfYr8Vf8NuLFWx+XRZ/we+PK3CeEz/xD4qf/Jr4Czbe7xJ/gf1O/AXuD+Iv
sJ+Kv8D9RPwF298r4qf9x8VfsPn8AfFHdFBkfxZ/ke/j4i/6/eks+jyuyPcY
8Rdt/fmw+CM6SftPiL/I/Uv8Ef96kfuW+It8LxB/pL2lIvut+IsR/iL3K/GX
/PY7Sn5+rOS331nivC7+Ev0Uf4n7tfhLnD/EX+J8If5I+4sl9n/xR/waJb++
zRL7v/hL7PfiL1l9vir+iA7KfvsdZX98YmXOP+Ivc34RfyQeL1v/vy7+MvdX
8Zfpt/jL3DfEX+b+Iv6y399G2R/fZpn7p/gj/WmVOe+JP9L/oMJ5RPwV7kPi
r/C9Q/yVCH+F85T4K37/ExXOU+Kv+Lxhxa/XYkTXK/74NSr++DUrEf6Kz9uq
+PVYrnD/En/V709H1c+PVbn/i7/K/VP8Vb+9eNUfr0SV85/4qz5fWOX8Kf5I
e/Uq30PFX/XHv1nlfir+iG5F9DK8vxV/zer3c/HX/OdjNc7z4q/59XSReLxm
79MPxF/z+ZI1fzzDmvH8Wvw1fz7Wa/58bNS4f4u/5o/vUqT9Vs0f7+VIfnDV
9++4yn1E/Ff95zuv8v8d4r96w+//N87eSw==
         "]]}}}, {}}, {
    DisplayFunction -> Identity, PlotRangePadding -> {{
        Scaled[0.02], 
        Scaled[0.02]}, {
        Scaled[0.02], 
        Scaled[0.05]}}, AxesOrigin -> {0, 0}, 
     PlotRange -> {{0., 500.}, {0, 99.48}}, DisplayFunction -> Identity, 
     AspectRatio -> NCache[GoldenRatio^(-1), 0.6180339887498948], 
     Axes -> {True, True}, AxesLabel -> {
       FormBox["\"# Observations Made\"", TraditionalForm], 
       FormBox["\"# Categories Uncovered\"", TraditionalForm]}, 
     AxesOrigin -> {0, 0}, DisplayFunction :> Identity, 
     Frame -> {{False, False}, {False, False}}, 
     FrameLabel -> {{None, None}, {None, None}}, 
     FrameTicks -> {{Automatic, Automatic}, {Automatic, Automatic}}, 
     GridLines -> {Automatic, Automatic}, GridLinesStyle -> Directive[
       GrayLevel[0.5, 0.4]], ImageSize -> 600, Method -> {}, 
     PlotRange -> {{0., 500.}, {0, 99.48}}, PlotRangeClipping -> True, 
     PlotRangePadding -> {{
        Scaled[0.02], 
        Scaled[0.02]}, {
        Scaled[0.02], 
        Scaled[0.05]}}, Ticks -> {Automatic, Automatic}}],FormBox[
    FormBox[
     TemplateBox[{
      "\"20 Categories\"", "\"40 Categories\"", "\"60 Categories\"", 
       "\"80 Categories\"", "\"100 Categories\""}, "LineLegend", 
      DisplayFunction -> (FormBox[
        StyleBox[
         StyleBox[
          PaneBox[
           TagBox[
            GridBox[{{
               TagBox[
                GridBox[{{
                   GraphicsBox[{{
                    Directive[
                    EdgeForm[
                    Directive[
                    Opacity[0.3], 
                    GrayLevel[0]]], 
                    PointSize[0.1], 
                    RGBColor[0.368417, 0.506779, 0.709798], 
                    AbsoluteThickness[1.6]], {
                    LineBox[{{0, 10}, {20, 10}}]}}, {
                    Directive[
                    EdgeForm[
                    Directive[
                    Opacity[0.3], 
                    GrayLevel[0]]], 
                    PointSize[0.1], 
                    RGBColor[0.368417, 0.506779, 0.709798], 
                    AbsoluteThickness[1.6]], {}}}, AspectRatio -> Full, 
                    ImageSize -> {20, 10}, PlotRangePadding -> None, 
                    ImagePadding -> Automatic, 
                    BaselinePosition -> (Scaled[0.1] -> Baseline)], #}, {
                   GraphicsBox[{{
                    Directive[
                    EdgeForm[
                    Directive[
                    Opacity[0.3], 
                    GrayLevel[0]]], 
                    PointSize[0.1], 
                    RGBColor[0.880722, 0.611041, 0.142051], 
                    AbsoluteThickness[1.6]], {
                    LineBox[{{0, 10}, {20, 10}}]}}, {
                    Directive[
                    EdgeForm[
                    Directive[
                    Opacity[0.3], 
                    GrayLevel[0]]], 
                    PointSize[0.1], 
                    RGBColor[0.880722, 0.611041, 0.142051], 
                    AbsoluteThickness[1.6]], {}}}, AspectRatio -> Full, 
                    ImageSize -> {20, 10}, PlotRangePadding -> None, 
                    ImagePadding -> Automatic, 
                    BaselinePosition -> (Scaled[0.1] -> Baseline)], #2}, {
                   GraphicsBox[{{
                    Directive[
                    EdgeForm[
                    Directive[
                    Opacity[0.3], 
                    GrayLevel[0]]], 
                    PointSize[0.1], 
                    RGBColor[0.560181, 0.691569, 0.194885], 
                    AbsoluteThickness[1.6]], {
                    LineBox[{{0, 10}, {20, 10}}]}}, {
                    Directive[
                    EdgeForm[
                    Directive[
                    Opacity[0.3], 
                    GrayLevel[0]]], 
                    PointSize[0.1], 
                    RGBColor[0.560181, 0.691569, 0.194885], 
                    AbsoluteThickness[1.6]], {}}}, AspectRatio -> Full, 
                    ImageSize -> {20, 10}, PlotRangePadding -> None, 
                    ImagePadding -> Automatic, 
                    BaselinePosition -> (Scaled[0.1] -> Baseline)], #3}, {
                   GraphicsBox[{{
                    Directive[
                    EdgeForm[
                    Directive[
                    Opacity[0.3], 
                    GrayLevel[0]]], 
                    PointSize[0.1], 
                    RGBColor[0.922526, 0.385626, 0.209179], 
                    AbsoluteThickness[1.6]], {
                    LineBox[{{0, 10}, {20, 10}}]}}, {
                    Directive[
                    EdgeForm[
                    Directive[
                    Opacity[0.3], 
                    GrayLevel[0]]], 
                    PointSize[0.1], 
                    RGBColor[0.922526, 0.385626, 0.209179], 
                    AbsoluteThickness[1.6]], {}}}, AspectRatio -> Full, 
                    ImageSize -> {20, 10}, PlotRangePadding -> None, 
                    ImagePadding -> Automatic, 
                    BaselinePosition -> (Scaled[0.1] -> Baseline)], #4}, {
                   GraphicsBox[{{
                    Directive[
                    EdgeForm[
                    Directive[
                    Opacity[0.3], 
                    GrayLevel[0]]], 
                    PointSize[0.1], 
                    RGBColor[0.528488, 0.470624, 0.701351], 
                    AbsoluteThickness[1.6]], {
                    LineBox[{{0, 10}, {20, 10}}]}}, {
                    Directive[
                    EdgeForm[
                    Directive[
                    Opacity[0.3], 
                    GrayLevel[0]]], 
                    PointSize[0.1], 
                    RGBColor[0.528488, 0.470624, 0.701351], 
                    AbsoluteThickness[1.6]], {}}}, AspectRatio -> Full, 
                    ImageSize -> {20, 10}, PlotRangePadding -> None, 
                    ImagePadding -> Automatic, 
                    BaselinePosition -> (Scaled[0.1] -> Baseline)], #5}}, 
                 GridBoxAlignment -> {
                  "Columns" -> {Center, Left}, "Rows" -> {{Baseline}}}, 
                 AutoDelete -> False, 
                 GridBoxDividers -> {
                  "Columns" -> {{False}}, "Rows" -> {{False}}}, 
                 GridBoxItemSize -> {"Columns" -> {{All}}, "Rows" -> {{All}}},
                  GridBoxSpacings -> {
                  "Columns" -> {{0.5}}, "Rows" -> {{0.8}}}], "Grid"]}}, 
             GridBoxAlignment -> {"Columns" -> {{Left}}, "Rows" -> {{Top}}}, 
             AutoDelete -> False, 
             GridBoxItemSize -> {
              "Columns" -> {{Automatic}}, "Rows" -> {{Automatic}}}, 
             GridBoxSpacings -> {"Columns" -> {{1}}, "Rows" -> {{0}}}], 
            "Grid"], Alignment -> Left, AppearanceElements -> None, 
           ImageMargins -> {{5, 5}, {5, 5}}, ImageSizeAction -> 
           "ResizeToFit"], LineIndent -> 0, StripOnInput -> False], {
         FontFamily -> "Arial"}, Background -> Automatic, StripOnInput -> 
         False], TraditionalForm]& ), 
      InterpretationFunction :> (RowBox[{"LineLegend", "[", 
         RowBox[{
           RowBox[{"{", 
             RowBox[{
               RowBox[{"Directive", "[", 
                 RowBox[{
                   RowBox[{"PointSize", "[", "0.005555555555555556`", "]"}], 
                   ",", 
                   InterpretationBox[
                    ButtonBox[
                    TooltipBox[
                    RowBox[{
                    GraphicsBox[{{
                    GrayLevel[0], 
                    RectangleBox[{0, 0}]}, {
                    GrayLevel[0], 
                    RectangleBox[{1, -1}]}, {
                    RGBColor[0.368417, 0.506779, 0.709798], 
                    RectangleBox[{0, -1}, {2, 1}]}}, AspectRatio -> 1, Frame -> 
                    True, FrameStyle -> 
                    RGBColor[
                    0.24561133333333335`, 0.3378526666666667, 
                    0.4731986666666667], FrameTicks -> None, PlotRangePadding -> 
                    None, ImageSize -> 
                    Dynamic[{
                    Automatic, 
                    1.35 (CurrentValue["FontCapHeight"]/AbsoluteCurrentValue[
                    Magnification])}]], "\[InvisibleSpace]"}], 
                    "RGBColor[0.368417, 0.506779, 0.709798]"], Appearance -> 
                    None, BaseStyle -> {}, BaselinePosition -> Baseline, 
                    DefaultBaseStyle -> {}, ButtonFunction :> 
                    With[{Typeset`box$ = EvaluationBox[]}, 
                    If[
                    Not[
                    AbsoluteCurrentValue["Deployed"]], 
                    SelectionMove[Typeset`box$, All, Expression]; 
                    FrontEnd`Private`$ColorSelectorInitialAlpha = 1; 
                    FrontEnd`Private`$ColorSelectorInitialColor = 
                    RGBColor[0.368417, 0.506779, 0.709798]; 
                    FrontEnd`Private`$ColorSelectorUseMakeBoxes = True; 
                    MathLink`CallFrontEnd[
                    FrontEnd`AttachCell[Typeset`box$, 
                    FrontEndResource["RGBColorValueSelector"], {
                    0, {Left, Bottom}}, {Left, Top}, 
                    "ClosingActions" -> {
                    "SelectionDeparture", "ParentChanged", 
                    "EvaluatorQuit"}]]]], BaseStyle -> Inherited, Evaluator -> 
                    Automatic, Method -> "Preemptive"], 
                    RGBColor[0.368417, 0.506779, 0.709798], Editable -> False,
                     Selectable -> False], ",", 
                   RowBox[{"AbsoluteThickness", "[", "1.6`", "]"}]}], "]"}], 
               ",", 
               RowBox[{"Directive", "[", 
                 RowBox[{
                   RowBox[{"PointSize", "[", "0.005555555555555556`", "]"}], 
                   ",", 
                   InterpretationBox[
                    ButtonBox[
                    TooltipBox[
                    RowBox[{
                    GraphicsBox[{{
                    GrayLevel[0], 
                    RectangleBox[{0, 0}]}, {
                    GrayLevel[0], 
                    RectangleBox[{1, -1}]}, {
                    RGBColor[0.880722, 0.611041, 0.142051], 
                    RectangleBox[{0, -1}, {2, 1}]}}, AspectRatio -> 1, Frame -> 
                    True, FrameStyle -> 
                    RGBColor[
                    0.587148, 0.40736066666666665`, 0.09470066666666668], 
                    FrameTicks -> None, PlotRangePadding -> None, ImageSize -> 
                    Dynamic[{
                    Automatic, 
                    1.35 (CurrentValue["FontCapHeight"]/AbsoluteCurrentValue[
                    Magnification])}]], "\[InvisibleSpace]"}], 
                    "RGBColor[0.880722, 0.611041, 0.142051]"], Appearance -> 
                    None, BaseStyle -> {}, BaselinePosition -> Baseline, 
                    DefaultBaseStyle -> {}, ButtonFunction :> 
                    With[{Typeset`box$ = EvaluationBox[]}, 
                    If[
                    Not[
                    AbsoluteCurrentValue["Deployed"]], 
                    SelectionMove[Typeset`box$, All, Expression]; 
                    FrontEnd`Private`$ColorSelectorInitialAlpha = 1; 
                    FrontEnd`Private`$ColorSelectorInitialColor = 
                    RGBColor[0.880722, 0.611041, 0.142051]; 
                    FrontEnd`Private`$ColorSelectorUseMakeBoxes = True; 
                    MathLink`CallFrontEnd[
                    FrontEnd`AttachCell[Typeset`box$, 
                    FrontEndResource["RGBColorValueSelector"], {
                    0, {Left, Bottom}}, {Left, Top}, 
                    "ClosingActions" -> {
                    "SelectionDeparture", "ParentChanged", 
                    "EvaluatorQuit"}]]]], BaseStyle -> Inherited, Evaluator -> 
                    Automatic, Method -> "Preemptive"], 
                    RGBColor[0.880722, 0.611041, 0.142051], Editable -> False,
                     Selectable -> False], ",", 
                   RowBox[{"AbsoluteThickness", "[", "1.6`", "]"}]}], "]"}], 
               ",", 
               RowBox[{"Directive", "[", 
                 RowBox[{
                   RowBox[{"PointSize", "[", "0.005555555555555556`", "]"}], 
                   ",", 
                   InterpretationBox[
                    ButtonBox[
                    TooltipBox[
                    RowBox[{
                    GraphicsBox[{{
                    GrayLevel[0], 
                    RectangleBox[{0, 0}]}, {
                    GrayLevel[0], 
                    RectangleBox[{1, -1}]}, {
                    RGBColor[0.560181, 0.691569, 0.194885], 
                    RectangleBox[{0, -1}, {2, 1}]}}, AspectRatio -> 1, Frame -> 
                    True, FrameStyle -> 
                    RGBColor[
                    0.37345400000000006`, 0.461046, 0.12992333333333334`], 
                    FrameTicks -> None, PlotRangePadding -> None, ImageSize -> 
                    Dynamic[{
                    Automatic, 
                    1.35 (CurrentValue["FontCapHeight"]/AbsoluteCurrentValue[
                    Magnification])}]], "\[InvisibleSpace]"}], 
                    "RGBColor[0.560181, 0.691569, 0.194885]"], Appearance -> 
                    None, BaseStyle -> {}, BaselinePosition -> Baseline, 
                    DefaultBaseStyle -> {}, ButtonFunction :> 
                    With[{Typeset`box$ = EvaluationBox[]}, 
                    If[
                    Not[
                    AbsoluteCurrentValue["Deployed"]], 
                    SelectionMove[Typeset`box$, All, Expression]; 
                    FrontEnd`Private`$ColorSelectorInitialAlpha = 1; 
                    FrontEnd`Private`$ColorSelectorInitialColor = 
                    RGBColor[0.560181, 0.691569, 0.194885]; 
                    FrontEnd`Private`$ColorSelectorUseMakeBoxes = True; 
                    MathLink`CallFrontEnd[
                    FrontEnd`AttachCell[Typeset`box$, 
                    FrontEndResource["RGBColorValueSelector"], {
                    0, {Left, Bottom}}, {Left, Top}, 
                    "ClosingActions" -> {
                    "SelectionDeparture", "ParentChanged", 
                    "EvaluatorQuit"}]]]], BaseStyle -> Inherited, Evaluator -> 
                    Automatic, Method -> "Preemptive"], 
                    RGBColor[0.560181, 0.691569, 0.194885], Editable -> False,
                     Selectable -> False], ",", 
                   RowBox[{"AbsoluteThickness", "[", "1.6`", "]"}]}], "]"}], 
               ",", 
               RowBox[{"Directive", "[", 
                 RowBox[{
                   RowBox[{"PointSize", "[", "0.005555555555555556`", "]"}], 
                   ",", 
                   InterpretationBox[
                    ButtonBox[
                    TooltipBox[
                    RowBox[{
                    GraphicsBox[{{
                    GrayLevel[0], 
                    RectangleBox[{0, 0}]}, {
                    GrayLevel[0], 
                    RectangleBox[{1, -1}]}, {
                    RGBColor[0.922526, 0.385626, 0.209179], 
                    RectangleBox[{0, -1}, {2, 1}]}}, AspectRatio -> 1, Frame -> 
                    True, FrameStyle -> 
                    RGBColor[
                    0.6150173333333333, 0.25708400000000003`, 
                    0.13945266666666667`], FrameTicks -> None, 
                    PlotRangePadding -> None, ImageSize -> 
                    Dynamic[{
                    Automatic, 
                    1.35 (CurrentValue["FontCapHeight"]/AbsoluteCurrentValue[
                    Magnification])}]], "\[InvisibleSpace]"}], 
                    "RGBColor[0.922526, 0.385626, 0.209179]"], Appearance -> 
                    None, BaseStyle -> {}, BaselinePosition -> Baseline, 
                    DefaultBaseStyle -> {}, ButtonFunction :> 
                    With[{Typeset`box$ = EvaluationBox[]}, 
                    If[
                    Not[
                    AbsoluteCurrentValue["Deployed"]], 
                    SelectionMove[Typeset`box$, All, Expression]; 
                    FrontEnd`Private`$ColorSelectorInitialAlpha = 1; 
                    FrontEnd`Private`$ColorSelectorInitialColor = 
                    RGBColor[0.922526, 0.385626, 0.209179]; 
                    FrontEnd`Private`$ColorSelectorUseMakeBoxes = True; 
                    MathLink`CallFrontEnd[
                    FrontEnd`AttachCell[Typeset`box$, 
                    FrontEndResource["RGBColorValueSelector"], {
                    0, {Left, Bottom}}, {Left, Top}, 
                    "ClosingActions" -> {
                    "SelectionDeparture", "ParentChanged", 
                    "EvaluatorQuit"}]]]], BaseStyle -> Inherited, Evaluator -> 
                    Automatic, Method -> "Preemptive"], 
                    RGBColor[0.922526, 0.385626, 0.209179], Editable -> False,
                     Selectable -> False], ",", 
                   RowBox[{"AbsoluteThickness", "[", "1.6`", "]"}]}], "]"}], 
               ",", 
               RowBox[{"Directive", "[", 
                 RowBox[{
                   RowBox[{"PointSize", "[", "0.005555555555555556`", "]"}], 
                   ",", 
                   InterpretationBox[
                    ButtonBox[
                    TooltipBox[
                    RowBox[{
                    GraphicsBox[{{
                    GrayLevel[0], 
                    RectangleBox[{0, 0}]}, {
                    GrayLevel[0], 
                    RectangleBox[{1, -1}]}, {
                    RGBColor[0.528488, 0.470624, 0.701351], 
                    RectangleBox[{0, -1}, {2, 1}]}}, AspectRatio -> 1, Frame -> 
                    True, FrameStyle -> 
                    RGBColor[
                    0.3523253333333333, 0.3137493333333333, 
                    0.46756733333333333`], FrameTicks -> None, 
                    PlotRangePadding -> None, ImageSize -> 
                    Dynamic[{
                    Automatic, 
                    1.35 (CurrentValue["FontCapHeight"]/AbsoluteCurrentValue[
                    Magnification])}]], "\[InvisibleSpace]"}], 
                    "RGBColor[0.528488, 0.470624, 0.701351]"], Appearance -> 
                    None, BaseStyle -> {}, BaselinePosition -> Baseline, 
                    DefaultBaseStyle -> {}, ButtonFunction :> 
                    With[{Typeset`box$ = EvaluationBox[]}, 
                    If[
                    Not[
                    AbsoluteCurrentValue["Deployed"]], 
                    SelectionMove[Typeset`box$, All, Expression]; 
                    FrontEnd`Private`$ColorSelectorInitialAlpha = 1; 
                    FrontEnd`Private`$ColorSelectorInitialColor = 
                    RGBColor[0.528488, 0.470624, 0.701351]; 
                    FrontEnd`Private`$ColorSelectorUseMakeBoxes = True; 
                    MathLink`CallFrontEnd[
                    FrontEnd`AttachCell[Typeset`box$, 
                    FrontEndResource["RGBColorValueSelector"], {
                    0, {Left, Bottom}}, {Left, Top}, 
                    "ClosingActions" -> {
                    "SelectionDeparture", "ParentChanged", 
                    "EvaluatorQuit"}]]]], BaseStyle -> Inherited, Evaluator -> 
                    Automatic, Method -> "Preemptive"], 
                    RGBColor[0.528488, 0.470624, 0.701351], Editable -> False,
                     Selectable -> False], ",", 
                   RowBox[{"AbsoluteThickness", "[", "1.6`", "]"}]}], "]"}]}],
              "}"}], ",", 
           RowBox[{"{", 
             RowBox[{#, ",", #2, ",", #3, ",", #4, ",", #5}], "}"}], ",", 
           RowBox[{"Joined", "\[Rule]", 
             RowBox[{"{", 
               
               RowBox[{
                "True", ",", "True", ",", "True", ",", "True", ",", "True"}], 
               "}"}]}], ",", 
           RowBox[{"LabelStyle", "\[Rule]", 
             RowBox[{"{", "}"}]}], ",", 
           RowBox[{"LegendLayout", "\[Rule]", "\"Column\""}], ",", 
           RowBox[{"LegendMarkers", "\[Rule]", 
             RowBox[{"{", 
               RowBox[{
                 RowBox[{"{", 
                   RowBox[{"False", ",", "Automatic"}], "}"}], ",", 
                 RowBox[{"{", 
                   RowBox[{"False", ",", "Automatic"}], "}"}], ",", 
                 RowBox[{"{", 
                   RowBox[{"False", ",", "Automatic"}], "}"}], ",", 
                 RowBox[{"{", 
                   RowBox[{"False", ",", "Automatic"}], "}"}], ",", 
                 RowBox[{"{", 
                   RowBox[{"False", ",", "Automatic"}], "}"}]}], "}"}]}]}], 
         "]"}]& ), Editable -> True], TraditionalForm], TraditionalForm]},
  "Legended",
  DisplayFunction->(GridBox[{{
      TagBox[
       ItemBox[
        PaneBox[
         TagBox[#, "SkipImageSizeLevel"], Alignment -> {Center, Baseline}, 
         BaselinePosition -> Baseline], DefaultBaseStyle -> "Labeled"], 
       "SkipImageSizeLevel"], 
      ItemBox[#2, DefaultBaseStyle -> "LabeledLabel"]}}, 
    GridBoxAlignment -> {"Columns" -> {{Center}}, "Rows" -> {{Center}}}, 
    AutoDelete -> False, GridBoxItemSize -> Automatic, 
    BaselinePosition -> {1, 1}]& ),
  Editable->True,
  InterpretationFunction->(RowBox[{"Legended", "[", 
     RowBox[{#, ",", 
       RowBox[{"Placed", "[", 
         RowBox[{#2, ",", "After"}], "]"}]}], "]"}]& )]], "Output",
 CellChangeTimes->{
  3.617812470519302*^9, 3.6178125255796137`*^9, 3.617812577006042*^9, 
   3.6178126632004747`*^9, 3.617812729293387*^9, 3.6178128581604757`*^9, {
   3.617812896855187*^9, 3.61781291085434*^9}, 3.6178135421388187`*^9, 
   3.6178135947823668`*^9, 3.617815490855504*^9}]
}, {2}]],

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", " ", 
   RowBox[{
   "Pull", " ", "the", " ", "mean", " ", "percentage", " ", "uncovered"}], 
   " ", "*)"}], "\[IndentingNewLine]", 
  RowBox[{
   RowBox[{"d2", " ", "=", " ", 
    RowBox[{
     RowBox[{
      RowBox[{"#", "[", 
       RowBox[{"[", 
        RowBox[{"All", ",", " ", "3"}], "]"}], "]"}], " ", "&"}], " ", "/@", 
     " ", "t1"}]}], ";"}]}]], "Input",
 CellChangeTimes->{{3.5701400925609283`*^9, 3.5701401264548674`*^9}, {
  3.5701416618356857`*^9, 3.570141710272456*^9}, {3.5701417793194056`*^9, 
  3.5701417816525393`*^9}, {3.5701425910978365`*^9, 3.570142616800307*^9}, {
  3.6178118855697193`*^9, 3.6178119007282476`*^9}}],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"g2", " ", "=", " ", 
  RowBox[{"ListLinePlot", "[", 
   RowBox[{"d2", ",", " ", 
    RowBox[{"PlotRange", "\[Rule]", 
     RowBox[{"{", 
      RowBox[{"All", ",", " ", "All"}], "}"}]}], ",", " ", 
    RowBox[{"ImageSize", "\[Rule]", "700"}], ",", " ", 
    RowBox[{"AxesLabel", "\[Rule]", 
     RowBox[{"{", 
      RowBox[{
      "\"\<# Observations Made\>\"", ",", " ", 
       "\"\<% of Categories Uncovered\>\""}], "}"}]}], ",", " ", 
    RowBox[{"GridLines", "\[Rule]", "Automatic"}], ",", " ", 
    RowBox[{"PlotLegends", " ", "\[Rule]", 
     RowBox[{"{", 
      RowBox[{
      "\"\<20 Categories\>\"", ",", " ", "\"\<40 Categories\>\"", ",", 
       "\"\<60 Categories\>\"", ",", "\"\<80 Categories\>\"", ",", 
       "\"\<100 Categories\>\""}], "}"}]}]}], "]"}]}]], "Input",
 CellChangeTimes->{{3.5700567029767876`*^9, 3.570056724404013*^9}, {
  3.5700576672779427`*^9, 3.570057669602075*^9}, {3.5700589814691095`*^9, 
  3.570058984212267*^9}, {3.5701399880779524`*^9, 3.5701399925232067`*^9}, {
  3.5701400347386217`*^9, 3.5701400490334387`*^9}, {3.5701401425987906`*^9, 
  3.5701401472500567`*^9}, {3.5701413732611804`*^9, 3.570141437117833*^9}, {
  3.570141581641099*^9, 3.5701415841092405`*^9}, {3.617811937410098*^9, 
  3.617811941782514*^9}, {3.617811972852113*^9, 3.6178119801217613`*^9}, {
  3.6178120287387733`*^9, 3.617812066049268*^9}, {3.6178121750761747`*^9, 
  3.617812189650507*^9}, {3.6178124558893223`*^9, 3.617812572869506*^9}, {
  3.617812623478531*^9, 3.617812699381318*^9}, {3.617812735140286*^9, 
  3.617812735627686*^9}, {3.6178130571861067`*^9, 3.6178130737972517`*^9}}],

Cell[BoxData[
 TemplateBox[{GraphicsBox[{{}, {{{}, {}, {
        Hue[0.67, 0.6, 0.6], 
        Directive[
         PointSize[0.005555555555555556], 
         RGBColor[0.368417, 0.506779, 0.709798], 
         AbsoluteThickness[1.6]], 
        LineBox[CompressedData["
1:eJxd1H+MHkUdx/GxNqQ2hGywIQ0QXUlDiPxwK4UKFe9T2lJKW7p3115/XHud
XgsiVnjEWmutMA0hhpjGxyiiUdNNCNEabB6wIY0hZASjxCg+8VdF0nQbCqio
fYiaxhATn93OxJv388/ldZ/5zndmdnY/MH3/2F2zjDH/epcxzd/zv8HI499q
fkdGwj9UrXj2n//93fHgOfrG/NkTF137QnCmY989+72frf558DxdvmXXklPr
fhU8X2sXP7rUvt4PvlzFnKeGQ34bnOuyZrpnfh98hY62E5wIXqCv33fxw/4X
rwRfqYceW/bl3W++GnyVfvLvq7Z+5YWTwR9UO/2SU8HX6MDIDVM/XlUHX6fv
/DTvPXDP6eBCZ9sB0Qt143D0hbNeC/6wrm9/0dfrD090bpl7InqR9j1/+NIP
nTwTfIMua/f/evCNao9ncfRind4/7+jK028Ef0Tvadf7ZvBN2pFtuunYSzG/
Wcde2jvsEPMleurt36ydzv4c/FFdubDZcfQtWtOed/THdLjt/5fgES1vHue+
aKk5zXeOBDvpzJPfHp7QX0O+VBc3y9kb7Jbq5vZxxvxWvfqfB+99bs9bIb9V
i5J8mR55a/T4+x6J+TJ9v13/30K+XLOv/tIlr7wc8+W69pnmxILNCv1g5ni3
Qr++oukY62/T+9sGfw/5bXpi+DQWXBBsVuqX7S/Wr9S58deGO4z1t+vwzPHu
9vC8Yv0qLW/PJ+ardGl7X2N+h15s71/M7wjvxz9Cvlrzh097/7xgt1ovNtfv
q7F+jd5458hwhzFfo93P7fna/Nmxfq2+2d7/OP9avbd9HjG/UyNzTwxvZKy/
U0vaCxPzdWoOf/R4zNdpZ3u/Yl7qwlnNAwhWqe3N9b/6bBhf6tDjzQJC7stw
X0NuRsN9jvWjqtc1FbF+6AUXHHxsWbAf1aHmON+O/ce0uH3fQq4xnUnqx7So
ff9i/Ziebk7vQOw/rvZ1OxTrx7H+cZ1K+o+n6zHr9ejw9p0bj/XrNedg84GJ
9evTfn69nm0vSKzfoB/NzLVBC082DWL9Bh1L6jdo7sz5zYQmk/VP6E8vNzc0
1k/o6eb6HI31E2of//OxfqOua9+XWA+7jXp3+37F+o3aeFHzhsX6TTr/uYz1
m9LxDvaw2awfJvWbUb85XY/frD+2389Yv0UnZlpb9HD7fY/1W3Rwpv2WdL1m
UhMz96PJNHeT6fx+Evvfqmua5Z6L9bDbiv5bsf9taa5t6fxuW7ofvy2d30yl
82kq3Y+bSufzUzpfNwj127H+7WnukPvt6XqMTfPcpv2E3Nr0PB3yyqb9PfIa
udmB/rBgCzu42pGen9+R9qthM506n0Z/5Ba5m07Pq8J4P53ejxq52Yn+sGAL
u53YP+wxvobNLvTfhf3DFuMdXMEermFzF/rDgi3s4Ar2cA2bu9EfFmzvxvNH
XsEermHzcfSHBVvYwRXs4Ro296A/LNjCDq5gD9ew+QT6w4It7OAK9nANm3vR
HxZsYQdXsIdr2HwS/WHBFnZwBXu4hs1u9IcFW9jBFezhGjafQn9YsIUdXMEe
rmFzH/rDgi3s4Ar2cA2b+9EfFmxhB1ewh2vYdFJncA4XsOAStnAHdnAXruAe
7OE+XMMD2Hw6dQbncAELLmELd2AHd+EK7sEe7sM1PIDNA6kzOIcLWHAJW7gD
O7gLV3AP9nAfruEBbD6TOoNzuIAFl7CFO7CDu3AF92AP9+EaHsBmT+oMzuEC
FlzCFu7ADu7CFdyDPdyHa3gAm8+mzuAcLmDBJWzhDuzgLlzBPdjDfbiGB7DZ
mzqDc7iABZewhTuwg7twBfdgD/fhGh7A5nOpMziHC1hwCVu4Azu4C1dwD/Zw
H67hAWz2pc7gHC5gwSVs4Q7s4C5cwT3Yw324hgew+XzqDM7hAhZcwhbuwA7u
whXcgz3ch2t4AJv9qTM4hwtYcAlbuAM7uAtXcA/2cB+u4QFsvpA6g3O4gAWX
sIU7sIO7cAX3YA/34RoewOZA6gzO4QIWXMIW7sAO7sIV3IM93IdreACbL6bO
4BwuYMElbOEO7OAuXME92MN9uIYHsHkwdQbncAELLmELd2AHd+EK7sEe7sM1
PIDNQ6kzOIcLWP/3/wAhgw9g
         "]]}, {
        Hue[0.9060679774997897, 0.6, 0.6], 
        Directive[
         PointSize[0.005555555555555556], 
         RGBColor[0.880722, 0.611041, 0.142051], 
         AbsoluteThickness[1.6]], 
        LineBox[CompressedData["
1:eJxdl3uMVdUVxo/EGNJQe6NECaXtAY0hCnLxCVXKh7zldWcGhmGeZ57cGeZx
ZhgBFe0xBk1tcS7BQlttPI0xlgbtLSWUNNacGkMpoeQWbRWBcijFRy3lUtrU
hpL0nj1rpWd/88/kN2t/69trP9bZM7ltoLpzjOM4/7zGcZLfoz/lubu/b37m
yh8wynuEx2Kk9+Mrey7tE85gRVumbvb+g8LjMW7MHc/edOIt4QmY94X3X/Hn
vC08CW5xKL/jwjvCLl5ffPax8W/8RngKtl/YOvfe5iPCt+J3U07+58meo8K3
of2BM6u27z4mPBUr7//WPO98Sfh2XD6ezOj3wtPwXBKd8q7wnaifvf/wpreU
s9jVf8PT0ZE/CM/EjgnX1l4//Y/Cd2HbTSeO/bvmfeG7UTGvKD4QvgcvT5xx
+tbrTgjfix1m/h8K34fplehT3z0pfD/e3fLpbTPHnhKehUn1HZWKTgvPxojR
/0n46/hOYhcpP4A79/3w4muHzgg/iJ1mvrHwHFypOffqi+8ofwOzzPIoz0VS
/csTzwoD3zP1CwdAJVnFQePzkER/tPDPEp+HymZVdkzYeQiDc5INPifxh3DP
3cmPsDMfP76UbMhfJD4fo38XdhbguNlfjS/Af/ckAo0vROXwVAw0vhBm+jPO
S3wRzHL9UjhYhIZkObdrfDGCnjeHd074SOKLYY5Pv7CzBHsOLaucII0vwSyz
QBpfiluS6b2p8aWYvO2zqoNf/VjiD6Np5O1/TW0UDh7GnMpslo77ROLLcI35
LRwswxVTn8aXS70aX44Rs98aX4HPzX5qfAVGj7vGV2J7enywEv+4+l7lhH0q
8VVYmFyvxcLBKphyhjWewyWzfsLIyXrq+BxuTLZ7/F9HOcph+rPJhVB9FX5d
OR0HLqu+Ck8k8qUyPqjC54ndTtVXyXoLO9X4rdnPz0RfjfuS5RsjHFRj2Bxw
4agaRxO7q6qvgdmObaqvQUsiv0P1NThl6lV9DerM/Rd2VuMn5nz+TfSrYa77
OdWvBsx+SjxajerErUrYWYP3zH1W/RrsTecL1mCWOW+qX4Pd879d6aDqX4vH
zX1Sfa3cL9XX4nxl992i6mth0t1wQfRrYdrLfGGsxRmTQPVr5fyqfq2sj+rr
8Jzp5+pfh+tN/1Z9HZ4x6yvjozoksxnKq34dTHs9qf7r5LwJB+tw6bVkw1W/
Djcn7Wqf6uuxKFmOPaqvx6HRD4To6zHNnDfV18t9+rvoG2CO5xuqb8ALph9K
PGjAtMbkggpHDYhMw1Z9I35lDpgwGlFr9lf1jdhq+ofqG3H7zLF7J9Wrvgk3
mv6o+ibpN6pvwgvmQqm+CZ+Ukoan+mbsSNrHiOqbsSs9PmjGg6Yfqb4ZH5nz
oPoWXDH3S/UtyCef48Oqb5F+ofoWXE2PdzxMNedD2PVsP3g4b86TsOdJv9H8
Hr5kzotw6OHg5aQBqZ+HOel8sYdXzPfyovi34nlzgITdVvzCNHhhtOIWc8GF
vVasMg8M4aAV58x9EA5bcdbcB+GI8sWtGLc3+eKqfxs2m/6i/m1Ykc6PNsTp
fF4bvpjWB204mrQzT/3bsNycf/Vvw/7kc71M/Smf044t+eTFoP7t+Hly+req
f7udz2vHGdPP1L8dp9MctiNOc9SOA5Y/5Xc6sD/Nbgcmm/eI+nfgK8l2PaX+
HbjLNBz1Jw47cCS9HlEHvpbWxx24bvSBIf6dWGjuv/p3osl8v9W/E4PmAaL+
nZhp+XfiVNKuX1X/Thw2/UP9O/GSeb+qfycmmv6j/l34cprdLvzM9BP177Lr
87rs+QRduGi+l+rfhSXpeqIue35xF55J2sUB9V+Pn6b93PXyPlX/9bg2uV7H
1J/iwXr8wLzf1J/yRevlvaj+pHfydr1uHtvS80Me801/V/88JqXXK8jb9YR5
vG4etOqfR1/yeTmu/nm7HqcbM9Lzc7vRYNXfjQ/NA1D9u+W9qv7ddn1ht50/
6sYF8zxQf9I7PfL9Uv8ee/7oofXvwQTzPlD/HnyQnl/YY+9H1GPXF/egcvkr
J0T9N2CtuQ7qv8H2wwYssNafxgcb7PmGG8if4jHpnV75vqp/L25O1wdijzjo
lf8X1L/Xri/qxV7Lv9feD6eP6u+z4+iT96X60/igz/YLaXzUh13mvaX+ffb+
Of14Oq13idFvr4/XT/79dv6wn/yJ4357/ZwBO+4O2PlBcW/ArjcYsNcrpPHR
gD3/mPI7vj3/jG+vj+tjdFx5lLM+zY/0OYp7vu3vEwekL/iI0vMPfbueIo2P
fLv+EuljGl8mdgbt+WSI3UF7fHaQ6h+01ydHem/Qno9P+oD0BfILKV+RxkfE
JRofE5cpvzNE+0/sEmeH7HygeI7YG7Ln51M8IC4Qh0O0/xSPKH+J4jHFy8TO
RpszG6n+jXa9WRoP4hzpPYr7lC+geIH04Uaqn8ZHNL5E+WMaXyZ2hqn+Yaqf
OEsM0ueIPRrvUzwgLhCHw3T+KR4Rl4hj8i8TO49Q/Y9Q/RTPEoM4R+wR+8QB
cYE4JC4SR8Ql4pjqKVPc2UT1E7vE2U20/8Q5Gu8R+zQ+oHiBOCQuEkeUr0Tx
mLhM7Gym+jfT/hNnaTyIc8QesU8cEBeIQ+IicURcIo6Jy1SPs4XqJ3aJs8Qg
zhF7xD5xQFwgDomLxBFxiTgmLhM7j9qceZT2n+JZioPiOWKP2Cd9QPECcUhc
JI6IS8QxcZnYeYzqJ3aJs8QgzhF7xD5xQFwgDomLxBFxiTgmLhM7j9ucIXaJ
s8QgzhF7xD5xQFwgDomLxBFxiTgmLhM7W23OELvEWWIQ54g9Yp84IC4Qh8RF
4oi4RBwTl4mdJ2zOELvEWWIQ54g9Yp84IC4Qh8RF4oi4RBwTl4mdJ23OELvE
WWIQ54g9Yp84IC4Qh8RF4oi4RBwTl4mdb9qcIXaJs8T4P/8P9KtJ5A==
         "]]}, {
        Hue[0.1421359549995791, 0.6, 0.6], 
        Directive[
         PointSize[0.005555555555555556], 
         RGBColor[0.560181, 0.691569, 0.194885], 
         AbsoluteThickness[1.6]], 
        LineBox[CompressedData["
1:eJxdmHucjeUWx99KckQmXShdtnJ0OS5bKoX45Ra57TGMMRez536f2XvPnvvg
ldTpakjlI7KdJEraleNUki0REpuUW2UrTShsFKdTTud9Xmt9zvus/Y/P13rW
+q21nvd93vVM5+yKcXkXG4bxy0WGof698IsPvPZK9Zs9kP4DiX2eeND7Q4i4
FXatu3LrkbLlxAnYOKPuH/99Jkx8NYaeuKfDnKWriDvi7le/+3lDwXvEN6Dh
+cFPlf64htiF1wOFs483riO+BQvK28+IbF1P3AWPFn8YfK7jJ8RdcevMnxLf
u2kj8e1Iz+13cOwznxLfiQ8uPjy5svMW4m7oOHLq24c7fEbcA+cO9f65dROz
G1evfOhQ/dXbiXthx8wld1xTsIP4LiweuvrM+d1R4t64/ZV/5b357E7iu7Fj
QONjGRftIr4HSy3vmwd8QXwv2gX347W2u4n74J3DHayMmO/D7IbPLcUvie/H
7/Hrqi/dzNwXL10+IunO7V8R98NbKt2Ve4j7o0+06JKF9+4lfgCx9f0T/xzG
PACLr+/5TZeW+4gHokXfstAXLfcTA32t7r1YTmwCB7q0nP784ANkfxAfNKkd
JDYfREa33zbOyfya7IPQyd6Pb8g+CO33bT+X9D2xMRif/Hp7+qyP2T4YL/yz
b9da90GyD4Hqbu3Rb8k+BM1lk97IeYTtQ2Gn81SM7EMxZeA9kz8YQWwMQ+ew
eoDYPgx1Hy2yKmb7Q8jd0vOFP7IPkf0hzPIMq/gsldgYTvv/HdmHY4na3r8Q
GyOQcvqpv65LYfsIbDuiEmT7w1j5Za/1M+rY/jCSF0z5d5s1bB+JefaGsH0k
0mZ9bHXke7KPov0kNkfh7OoVVkS2j8abN6RaTzjbRyPp+1df+sR1mOxjqD/E
5hissxNm+1j0rk/76tg8to9FitXdy86w3YNN1aphP1xgeHBq1+jshBRi04Mr
mp/4T59BxBEP7SexkYgl6vXey/6JGPPnMOsVYf9EtGinAjSTfyK6W7uxpSex
MQ6b7X4SYxw6bbvq14pHic1xOP+M2jD2F2wkobf9+5H8kzC205FV08cQm0mw
21NKHEnC1tQbr+o/j9gYj7XNg3bNfZL9x0Pt/k3b2H885jz5brtFWew/HjkT
za9Lehwh/wmwFlsJE2MCku39ITYn4BXfA633vEIcmYBWm5Ui+ydjXfeSqlFx
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
         "]]}, {
        Hue[0.37820393249936934`, 0.6, 0.6], 
        Directive[
         PointSize[0.005555555555555556], 
         RGBColor[0.922526, 0.385626, 0.209179], 
         AbsoluteThickness[1.6]], 
        LineBox[CompressedData["
1:eJxdWWmQlNUV/WKMZVIuo6EiZZGkNUhZRGQUFRUJR0GRfYZlGPaefZ/pvXt6
embaUmNwYyw1RqPFWEQNKaPjEqRwaxWNEDWjElGR2ISgsgUUEJeQpL8756S+
r+cPdebOfeed++67976Ps6o75tYd5zjO4e84jvvv0M/BSffc6/6snMRfYNpJ
x/38ph/dS3wiLh3n/qwhLsGUdYeObUmtJR6GJatePnLu0seJh2Pvt2s/f2fW
k8Qj0Pqp+4s/EQfw1bydD/1243ris9G7t3z9T258lngkXtz84NXrDj1PPAoP
hyb+YOuaHPG52FhgW/XyS8SjccGJj45YXPsK8XlI7h5V+NVG4vNx6vW5woqv
EZfio5EnXHf35D8TX4DUsMem7ki/Tnwh9rnb2buJeByefODAI6/N+AvxRUi+
sPrMsdvfIL4YL9l+3iS+BIXNFnb8V+LxyEy6ePmGaYPEl+JWC4jwZbDtT3ib
+HJ8+NbRQoSEJ2DX4Nnbvu55h/gKHClEf/eod4knYlHthI/n3Cb8C7jWC07c
QjwJPyt4Nz8nDLjRPbaFOAs4hdP+4K2/0X4lriisdk/7e7RfiXzaDRCxcxWW
bXAzZCvtVwGuvJPep30yvnGPv5o4Oxm1JZWXPf267FPQfrp7IB/QPgXv2X4/
pP1qHHbDeYQ4ezXu2O9GUPZrcJLFdxvt1+Aiy09iZyqan4vdOfz4j2ifinPc
476F2LkWZw1EGu/YL/u1uL9wmiNP2E77NFh6Bv5O+zT8ZvIthROTfTrWu+m/
W/bpCNzoJvDHtM/geRJnZ+DM4ytOGfOk7DPxHzugPO0zccyLnVl4385f9llw
o5d4QfbZsOUekH02HrT976B9Du8DcXYO7PjSspchYPqJUYY/2Hb192WwcI77
xxDOlcGu4zH5l6PRDoR2lMOOZwNxthx/tPXkX878IXbmMj476T8XicJpVZxC
nJ2L77nH1Uqcmwv3NpavJ3bmYYQr9zr5z8Nqy2f5z+N+5D8PM62e/ZP+82HX
9Yj85+NZK3i0Z+fDjdawx4hz87Hf6oH8F2DW+JVXBncRYwE+sXq3i/4L0GsJ
SJxbgDttQ8ROBY7Z/SBGBeMj/wrsctNvQP4V+KrHXVD+CzGUXvJfiIlWcD6h
/0JELJ7EuYWMJ7FTiYgdIDEqWc/lX8l8k38lEHQrkPwXYaLd90/pvwg3uOV1
nfwX4Ro3fFNpzy3CqzPcgBE7i3G+e3x3y38x7Hq2EmcX43GLv/wX44tCtEoq
5b8E37V6Jf8l2GT5Kf8lPB/5L8E4S7jP6L+U9YsYS1FX7/4QZ5fivo3uDSHO
LYWFe478l+HzQjcYv1L+yzCn2i1w8l+G8kL1PP16+S/DBstf+S/HUivo8l+O
n9l9lP9ymNzLdtN/OUa76XousbMCp9kBEWMFPrP8I86uwCuW4PJfgWeMX/5B
zLH9EQeCmG3713pB9jfiYBB3WcHW+kHW6z1DuD+IhW45OiC+IFa77XI87fkg
LnHT5ThipwqW/iXEgSqsK2Tb6jOJUcX4Ewer8Hv3OkSIs1V4w37EX8X9E+eq
cLs7jqwSfxXsuG8SfzXOt4Yu/uqh9P5a/NW43Q1PTvzV2Gn3U/zV2G4B3Ev+
anzf+hFxrho32DxDnK/mPEDs1OBZtz1VEAdq8GPLL2LU8L4QB2uwxPo7cbYG
i+1+ir8Gl7twtfhr2O/FXwO7jjvEX4tJJlj8tfid1U/x1/L+ib8WM+0+ib+W
/WYf+WtxqWseFH8ttll8aM/X4leu+Wxipw5rvP6BOlxrGyRGHT63hkgcrMO/
LWGIs3W43+ZV8dfhHXc8aibO1SFj/U78dXjY8kf89eyv4q/3+6Mew62/iL8e
Eyy+4q9Hh80v4q/nfRF/PSx9Nou/nuch/gYctQFD/A2cB8XfgDtt3hB/A/ZY
Oom/AZvc6zJ2P/kbMMkSjDjXgMesYIm/AZ+44/AI2p1G9kPiQCP7FTEaOY8Q
Bxth41QFcbYRvyxU36PzxN/I/iP+RuYvcb6R8RJ/E0bbgCL+JmwcGkjI34Rz
vPZgE051y8sj4m/CU9bAxN+E2+y+i78J91n8xd+E2VbvxN/MfiX+Zlh6bhN/
M8ZZPou/GVlrT+Jv5vmKvxlvWj0SfzPnS/E34333+m8VfwtOdsP/gfhbYOPc
AfG3sF78i/wtWGvnKf4WvGv1l/b+Flj73i3+Ftj4fjrt+RaeH7HTynpLHGhl
fyFGK57y2oOtaLIFiLOteNPyT/ytPH/iXCued6/DSPG3sr6Jvw2vWX6Iv43n
Lf42PGHvLfG3wdpzvfjbMMr79/1tsO0vFX8b7Lo3ir8Nky1A4m/HQ/aeFH87
6tzyeo/42zHG5hPxt7P+ir+d7xHxt/O9Jv52ztvib8dplr/i7+B7S/wd7Mfi
74Ad76Pi78AZNvCLvwNhu0/i72D+i78DVj7Wir+D9Vz8IYy1/kdcEsJoLw6E
WM+JS0N8r2t/Ic6nxGUh9l/tN8T+TBwKsT9p/yFY+dhJ3BfCdOsv0hOCpf9W
4oEQDtm8Ln0h3Gz1kngwhFvtQkpvyB/fgyHeR+kPs38foP4wUla/pT/M+0N7
adjPhzCG1qG9LIx9lpDEwTC/H0h/mPMB7dkwbDwfQ9wXxny7/9IfxhdWgGkf
CGO61WviXJj3k3gwjN1e/nwYW2x+JD4YxmdeuxPBXV7+kgjvP3Egwu8/0h/B
w3ZhiVH092UR3m/pj+Cwd/+hCN717icbwX7vfvoiMDljifuL/n4gglV236Q/
wveW9Eew1ru/fAQxe99IfwQn2INJ+qPY4/UvieJyq1/SH4WZq6U/ilYrcNIf
xXSbV6Q/inavPRjF2979h6J8f0l/lPVL+qOsV9IfhY0LMemPwspTu/RH8Y29
B6U/ChunK6U/igvtvSP9Uc5P0h/jPC39MTzkxYEYZlk9kv4YnrB+K/0xnGLv
D+mP4WQvDhbZQzHYc2Cl9Mc4j0t/zK+3P8Z6Lf0x7Pf652J8D0t/DJVWn6U/
xvlf+ov+3onjFZs3pD+Ooe+f0h/HQu96pXEkrZ5LfxzTrd5Jf5zzhfTHMcXq
r/TH/fvLxvGg9R/pj+NV737643w/SH8cm21glP64P56DcX4flP4439fSH0fe
Dlj6E6zH0p/AHvteIv0JfzxKE1jj3S+KcFkCbdaPpD/B96b0JzhvS38Cb3n1
9CU4D0t/At96z2sggfu8+8kl2N+kP4FHrb9Jf4LzpvQncJYlmPQnUWHvJ+lP
4jqbB6U/iUne9UuTOOzdH5Lsh9KfxMnW36U/iR3eeIeSnC+kP8l+Jf1JBLz7
60/ieu9+BpL40suXS/J7s/QncbN3vXwSm6z/Sn8S+7zn66Twote/JOWPRyCF
dd7zK01hp1cPUv79laX4vUH6U7jNu59QivOF9Kcwxov7Uvw+LP0pf/wGivaX
S/H/E6Q/xfes9Kc4n0t/ClXe9Z1O9Nt7V/o78ZRXb6CT84P0d2KzN57oxBa7
ANLfiTXe9YKdCHr5Qp3472jPetlOXGTzlfR34tfe/fYXrT9QhHOdeM+LBztx
njee+U7/+R7s5Ptf+tOwdrtd+tP+eATS/N4n/Wl+X5X+NN8v0p/m90jpT2OY
zXfSX4Szaf/++9L8/iz9ab7HpD/N/6+Q/jSGPhdKfxrDvevni+wHi/Q4XZzP
pL+rSH+XX19pF35q86P0d/njV9blz79gFz72xjvU5Y9/tsje1+XPh/4u/NCr
Z6CIL9fF78XSX8SfL+I72MX5V/oz/niXZHCGly+Q8cejNMP3r/Rn+D1C+jOY
ZvO79Gf88Q0V+Wcz/v32Fdn7M/58GcjgaXvfSn+G713pz/A9If0ZzuvSn/Gf
n9ONZ7z+Jd3+/Qa6/euXdvvjj26/3rJuzu/S3+2Pd6gbvT79RX/fV8TX3+2P
70A3znPLx1Hp7+b3OOkvWi/fXaS/yO70+O0lPX57oMcf79Iefp+Q/h5Y+T8k
/UX2YA//f0n6i/iyPf7z7uvBl/a+k/4ef/wGivhyResPFtnzRfs/2IPd3ng6
vX6+kl5/fAO9/J4t/b3++KD3/+v9D28NZyA=
         "]]}, {
        Hue[0.6142719099991583, 0.6, 0.6], 
        Directive[
         PointSize[0.005555555555555556], 
         RGBColor[0.528488, 0.470624, 0.701351], 
         AbsoluteThickness[1.6]], 
        LineBox[CompressedData["
1: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
         
         "]]}}}, {}}, {DisplayFunction -> Identity, PlotRangePadding -> {{
        Scaled[0.02], 
        Scaled[0.02]}, {
        Scaled[0.02], 
        Scaled[0.05]}}, AxesOrigin -> {0, 0}, 
     PlotRange -> {{0., 500.}, {0, 1.}}, DisplayFunction -> Identity, 
     AspectRatio -> NCache[GoldenRatio^(-1), 0.6180339887498948], 
     Axes -> {True, True}, AxesLabel -> {
       FormBox["\"# Observations Made\"", TraditionalForm], 
       FormBox["\"% of Categories Uncovered\"", TraditionalForm]}, 
     AxesOrigin -> {0, 0}, DisplayFunction :> Identity, 
     Frame -> {{False, False}, {False, False}}, 
     FrameLabel -> {{None, None}, {None, None}}, 
     FrameTicks -> {{Automatic, Automatic}, {Automatic, Automatic}}, 
     GridLines -> {Automatic, Automatic}, GridLinesStyle -> Directive[
       GrayLevel[0.5, 0.4]], ImageSize -> 700, Method -> {}, 
     PlotRange -> {{0., 500.}, {0, 1.}}, PlotRangeClipping -> True, 
     PlotRangePadding -> {{
        Scaled[0.02], 
        Scaled[0.02]}, {
        Scaled[0.02], 
        Scaled[0.05]}}, Ticks -> {Automatic, Automatic}}],FormBox[
    FormBox[
     TemplateBox[{
      "\"20 Categories\"", "\"40 Categories\"", "\"60 Categories\"", 
       "\"80 Categories\"", "\"100 Categories\""}, "LineLegend", 
      DisplayFunction -> (FormBox[
        StyleBox[
         StyleBox[
          PaneBox[
           TagBox[
            GridBox[{{
               TagBox[
                GridBox[{{
                   GraphicsBox[{{
                    Directive[
                    EdgeForm[
                    Directive[
                    Opacity[0.3], 
                    GrayLevel[0]]], 
                    PointSize[0.1], 
                    RGBColor[0.368417, 0.506779, 0.709798], 
                    AbsoluteThickness[1.6]], {
                    LineBox[{{0, 10}, {20, 10}}]}}, {
                    Directive[
                    EdgeForm[
                    Directive[
                    Opacity[0.3], 
                    GrayLevel[0]]], 
                    PointSize[0.1], 
                    RGBColor[0.368417, 0.506779, 0.709798], 
                    AbsoluteThickness[1.6]], {}}}, AspectRatio -> Full, 
                    ImageSize -> {20, 10}, PlotRangePadding -> None, 
                    ImagePadding -> Automatic, 
                    BaselinePosition -> (Scaled[0.1] -> Baseline)], #}, {
                   GraphicsBox[{{
                    Directive[
                    EdgeForm[
                    Directive[
                    Opacity[0.3], 
                    GrayLevel[0]]], 
                    PointSize[0.1], 
                    RGBColor[0.880722, 0.611041, 0.142051], 
                    AbsoluteThickness[1.6]], {
                    LineBox[{{0, 10}, {20, 10}}]}}, {
                    Directive[
                    EdgeForm[
                    Directive[
                    Opacity[0.3], 
                    GrayLevel[0]]], 
                    PointSize[0.1], 
                    RGBColor[0.880722, 0.611041, 0.142051], 
                    AbsoluteThickness[1.6]], {}}}, AspectRatio -> Full, 
                    ImageSize -> {20, 10}, PlotRangePadding -> None, 
                    ImagePadding -> Automatic, 
                    BaselinePosition -> (Scaled[0.1] -> Baseline)], #2}, {
                   GraphicsBox[{{
                    Directive[
                    EdgeForm[
                    Directive[
                    Opacity[0.3], 
                    GrayLevel[0]]], 
                    PointSize[0.1], 
                    RGBColor[0.560181, 0.691569, 0.194885], 
                    AbsoluteThickness[1.6]], {
                    LineBox[{{0, 10}, {20, 10}}]}}, {
                    Directive[
                    EdgeForm[
                    Directive[
                    Opacity[0.3], 
                    GrayLevel[0]]], 
                    PointSize[0.1], 
                    RGBColor[0.560181, 0.691569, 0.194885], 
                    AbsoluteThickness[1.6]], {}}}, AspectRatio -> Full, 
                    ImageSize -> {20, 10}, PlotRangePadding -> None, 
                    ImagePadding -> Automatic, 
                    BaselinePosition -> (Scaled[0.1] -> Baseline)], #3}, {
                   GraphicsBox[{{
                    Directive[
                    EdgeForm[
                    Directive[
                    Opacity[0.3], 
                    GrayLevel[0]]], 
                    PointSize[0.1], 
                    RGBColor[0.922526, 0.385626, 0.209179], 
                    AbsoluteThickness[1.6]], {
                    LineBox[{{0, 10}, {20, 10}}]}}, {
                    Directive[
                    EdgeForm[
                    Directive[
                    Opacity[0.3], 
                    GrayLevel[0]]], 
                    PointSize[0.1], 
                    RGBColor[0.922526, 0.385626, 0.209179], 
                    AbsoluteThickness[1.6]], {}}}, AspectRatio -> Full, 
                    ImageSize -> {20, 10}, PlotRangePadding -> None, 
                    ImagePadding -> Automatic, 
                    BaselinePosition -> (Scaled[0.1] -> Baseline)], #4}, {
                   GraphicsBox[{{
                    Directive[
                    EdgeForm[
                    Directive[
                    Opacity[0.3], 
                    GrayLevel[0]]], 
                    PointSize[0.1], 
                    RGBColor[0.528488, 0.470624, 0.701351], 
                    AbsoluteThickness[1.6]], {
                    LineBox[{{0, 10}, {20, 10}}]}}, {
                    Directive[
                    EdgeForm[
                    Directive[
                    Opacity[0.3], 
                    GrayLevel[0]]], 
                    PointSize[0.1], 
                    RGBColor[0.528488, 0.470624, 0.701351], 
                    AbsoluteThickness[1.6]], {}}}, AspectRatio -> Full, 
                    ImageSize -> {20, 10}, PlotRangePadding -> None, 
                    ImagePadding -> Automatic, 
                    BaselinePosition -> (Scaled[0.1] -> Baseline)], #5}}, 
                 GridBoxAlignment -> {
                  "Columns" -> {Center, Left}, "Rows" -> {{Baseline}}}, 
                 AutoDelete -> False, 
                 GridBoxDividers -> {
                  "Columns" -> {{False}}, "Rows" -> {{False}}}, 
                 GridBoxItemSize -> {"Columns" -> {{All}}, "Rows" -> {{All}}},
                  GridBoxSpacings -> {
                  "Columns" -> {{0.5}}, "Rows" -> {{0.8}}}], "Grid"]}}, 
             GridBoxAlignment -> {"Columns" -> {{Left}}, "Rows" -> {{Top}}}, 
             AutoDelete -> False, 
             GridBoxItemSize -> {
              "Columns" -> {{Automatic}}, "Rows" -> {{Automatic}}}, 
             GridBoxSpacings -> {"Columns" -> {{1}}, "Rows" -> {{0}}}], 
            "Grid"], Alignment -> Left, AppearanceElements -> None, 
           ImageMargins -> {{5, 5}, {5, 5}}, ImageSizeAction -> 
           "ResizeToFit"], LineIndent -> 0, StripOnInput -> False], {
         FontFamily -> "Arial"}, Background -> Automatic, StripOnInput -> 
         False], TraditionalForm]& ), 
      InterpretationFunction :> (RowBox[{"LineLegend", "[", 
         RowBox[{
           RowBox[{"{", 
             RowBox[{
               RowBox[{"Directive", "[", 
                 RowBox[{
                   RowBox[{"PointSize", "[", "0.005555555555555556`", "]"}], 
                   ",", 
                   InterpretationBox[
                    ButtonBox[
                    TooltipBox[
                    RowBox[{
                    GraphicsBox[{{
                    GrayLevel[0], 
                    RectangleBox[{0, 0}]}, {
                    GrayLevel[0], 
                    RectangleBox[{1, -1}]}, {
                    RGBColor[0.368417, 0.506779, 0.709798], 
                    RectangleBox[{0, -1}, {2, 1}]}}, AspectRatio -> 1, Frame -> 
                    True, FrameStyle -> 
                    RGBColor[
                    0.24561133333333335`, 0.3378526666666667, 
                    0.4731986666666667], FrameTicks -> None, PlotRangePadding -> 
                    None, ImageSize -> 
                    Dynamic[{
                    Automatic, 
                    1.35 (CurrentValue["FontCapHeight"]/AbsoluteCurrentValue[
                    Magnification])}]], "\[InvisibleSpace]"}], 
                    "RGBColor[0.368417, 0.506779, 0.709798]"], Appearance -> 
                    None, BaseStyle -> {}, BaselinePosition -> Baseline, 
                    DefaultBaseStyle -> {}, ButtonFunction :> 
                    With[{Typeset`box$ = EvaluationBox[]}, 
                    If[
                    Not[
                    AbsoluteCurrentValue["Deployed"]], 
                    SelectionMove[Typeset`box$, All, Expression]; 
                    FrontEnd`Private`$ColorSelectorInitialAlpha = 1; 
                    FrontEnd`Private`$ColorSelectorInitialColor = 
                    RGBColor[0.368417, 0.506779, 0.709798]; 
                    FrontEnd`Private`$ColorSelectorUseMakeBoxes = True; 
                    MathLink`CallFrontEnd[
                    FrontEnd`AttachCell[Typeset`box$, 
                    FrontEndResource["RGBColorValueSelector"], {
                    0, {Left, Bottom}}, {Left, Top}, 
                    "ClosingActions" -> {
                    "SelectionDeparture", "ParentChanged", 
                    "EvaluatorQuit"}]]]], BaseStyle -> Inherited, Evaluator -> 
                    Automatic, Method -> "Preemptive"], 
                    RGBColor[0.368417, 0.506779, 0.709798], Editable -> False,
                     Selectable -> False], ",", 
                   RowBox[{"AbsoluteThickness", "[", "1.6`", "]"}]}], "]"}], 
               ",", 
               RowBox[{"Directive", "[", 
                 RowBox[{
                   RowBox[{"PointSize", "[", "0.005555555555555556`", "]"}], 
                   ",", 
                   InterpretationBox[
                    ButtonBox[
                    TooltipBox[
                    RowBox[{
                    GraphicsBox[{{
                    GrayLevel[0], 
                    RectangleBox[{0, 0}]}, {
                    GrayLevel[0], 
                    RectangleBox[{1, -1}]}, {
                    RGBColor[0.880722, 0.611041, 0.142051], 
                    RectangleBox[{0, -1}, {2, 1}]}}, AspectRatio -> 1, Frame -> 
                    True, FrameStyle -> 
                    RGBColor[
                    0.587148, 0.40736066666666665`, 0.09470066666666668], 
                    FrameTicks -> None, PlotRangePadding -> None, ImageSize -> 
                    Dynamic[{
                    Automatic, 
                    1.35 (CurrentValue["FontCapHeight"]/AbsoluteCurrentValue[
                    Magnification])}]], "\[InvisibleSpace]"}], 
                    "RGBColor[0.880722, 0.611041, 0.142051]"], Appearance -> 
                    None, BaseStyle -> {}, BaselinePosition -> Baseline, 
                    DefaultBaseStyle -> {}, ButtonFunction :> 
                    With[{Typeset`box$ = EvaluationBox[]}, 
                    If[
                    Not[
                    AbsoluteCurrentValue["Deployed"]], 
                    SelectionMove[Typeset`box$, All, Expression]; 
                    FrontEnd`Private`$ColorSelectorInitialAlpha = 1; 
                    FrontEnd`Private`$ColorSelectorInitialColor = 
                    RGBColor[0.880722, 0.611041, 0.142051]; 
                    FrontEnd`Private`$ColorSelectorUseMakeBoxes = True; 
                    MathLink`CallFrontEnd[
                    FrontEnd`AttachCell[Typeset`box$, 
                    FrontEndResource["RGBColorValueSelector"], {
                    0, {Left, Bottom}}, {Left, Top}, 
                    "ClosingActions" -> {
                    "SelectionDeparture", "ParentChanged", 
                    "EvaluatorQuit"}]]]], BaseStyle -> Inherited, Evaluator -> 
                    Automatic, Method -> "Preemptive"], 
                    RGBColor[0.880722, 0.611041, 0.142051], Editable -> False,
                     Selectable -> False], ",", 
                   RowBox[{"AbsoluteThickness", "[", "1.6`", "]"}]}], "]"}], 
               ",", 
               RowBox[{"Directive", "[", 
                 RowBox[{
                   RowBox[{"PointSize", "[", "0.005555555555555556`", "]"}], 
                   ",", 
                   InterpretationBox[
                    ButtonBox[
                    TooltipBox[
                    RowBox[{
                    GraphicsBox[{{
                    GrayLevel[0], 
                    RectangleBox[{0, 0}]}, {
                    GrayLevel[0], 
                    RectangleBox[{1, -1}]}, {
                    RGBColor[0.560181, 0.691569, 0.194885], 
                    RectangleBox[{0, -1}, {2, 1}]}}, AspectRatio -> 1, Frame -> 
                    True, FrameStyle -> 
                    RGBColor[
                    0.37345400000000006`, 0.461046, 0.12992333333333334`], 
                    FrameTicks -> None, PlotRangePadding -> None, ImageSize -> 
                    Dynamic[{
                    Automatic, 
                    1.35 (CurrentValue["FontCapHeight"]/AbsoluteCurrentValue[
                    Magnification])}]], "\[InvisibleSpace]"}], 
                    "RGBColor[0.560181, 0.691569, 0.194885]"], Appearance -> 
                    None, BaseStyle -> {}, BaselinePosition -> Baseline, 
                    DefaultBaseStyle -> {}, ButtonFunction :> 
                    With[{Typeset`box$ = EvaluationBox[]}, 
                    If[
                    Not[
                    AbsoluteCurrentValue["Deployed"]], 
                    SelectionMove[Typeset`box$, All, Expression]; 
                    FrontEnd`Private`$ColorSelectorInitialAlpha = 1; 
                    FrontEnd`Private`$ColorSelectorInitialColor = 
                    RGBColor[0.560181, 0.691569, 0.194885]; 
                    FrontEnd`Private`$ColorSelectorUseMakeBoxes = True; 
                    MathLink`CallFrontEnd[
                    FrontEnd`AttachCell[Typeset`box$, 
                    FrontEndResource["RGBColorValueSelector"], {
                    0, {Left, Bottom}}, {Left, Top}, 
                    "ClosingActions" -> {
                    "SelectionDeparture", "ParentChanged", 
                    "EvaluatorQuit"}]]]], BaseStyle -> Inherited, Evaluator -> 
                    Automatic, Method -> "Preemptive"], 
                    RGBColor[0.560181, 0.691569, 0.194885], Editable -> False,
                     Selectable -> False], ",", 
                   RowBox[{"AbsoluteThickness", "[", "1.6`", "]"}]}], "]"}], 
               ",", 
               RowBox[{"Directive", "[", 
                 RowBox[{
                   RowBox[{"PointSize", "[", "0.005555555555555556`", "]"}], 
                   ",", 
                   InterpretationBox[
                    ButtonBox[
                    TooltipBox[
                    RowBox[{
                    GraphicsBox[{{
                    GrayLevel[0], 
                    RectangleBox[{0, 0}]}, {
                    GrayLevel[0], 
                    RectangleBox[{1, -1}]}, {
                    RGBColor[0.922526, 0.385626, 0.209179], 
                    RectangleBox[{0, -1}, {2, 1}]}}, AspectRatio -> 1, Frame -> 
                    True, FrameStyle -> 
                    RGBColor[
                    0.6150173333333333, 0.25708400000000003`, 
                    0.13945266666666667`], FrameTicks -> None, 
                    PlotRangePadding -> None, ImageSize -> 
                    Dynamic[{
                    Automatic, 
                    1.35 (CurrentValue["FontCapHeight"]/AbsoluteCurrentValue[
                    Magnification])}]], "\[InvisibleSpace]"}], 
                    "RGBColor[0.922526, 0.385626, 0.209179]"], Appearance -> 
                    None, BaseStyle -> {}, BaselinePosition -> Baseline, 
                    DefaultBaseStyle -> {}, ButtonFunction :> 
                    With[{Typeset`box$ = EvaluationBox[]}, 
                    If[
                    Not[
                    AbsoluteCurrentValue["Deployed"]], 
                    SelectionMove[Typeset`box$, All, Expression]; 
                    FrontEnd`Private`$ColorSelectorInitialAlpha = 1; 
                    FrontEnd`Private`$ColorSelectorInitialColor = 
                    RGBColor[0.922526, 0.385626, 0.209179]; 
                    FrontEnd`Private`$ColorSelectorUseMakeBoxes = True; 
                    MathLink`CallFrontEnd[
                    FrontEnd`AttachCell[Typeset`box$, 
                    FrontEndResource["RGBColorValueSelector"], {
                    0, {Left, Bottom}}, {Left, Top}, 
                    "ClosingActions" -> {
                    "SelectionDeparture", "ParentChanged", 
                    "EvaluatorQuit"}]]]], BaseStyle -> Inherited, Evaluator -> 
                    Automatic, Method -> "Preemptive"], 
                    RGBColor[0.922526, 0.385626, 0.209179], Editable -> False,
                     Selectable -> False], ",", 
                   RowBox[{"AbsoluteThickness", "[", "1.6`", "]"}]}], "]"}], 
               ",", 
               RowBox[{"Directive", "[", 
                 RowBox[{
                   RowBox[{"PointSize", "[", "0.005555555555555556`", "]"}], 
                   ",", 
                   InterpretationBox[
                    ButtonBox[
                    TooltipBox[
                    RowBox[{
                    GraphicsBox[{{
                    GrayLevel[0], 
                    RectangleBox[{0, 0}]}, {
                    GrayLevel[0], 
                    RectangleBox[{1, -1}]}, {
                    RGBColor[0.528488, 0.470624, 0.701351], 
                    RectangleBox[{0, -1}, {2, 1}]}}, AspectRatio -> 1, Frame -> 
                    True, FrameStyle -> 
                    RGBColor[
                    0.3523253333333333, 0.3137493333333333, 
                    0.46756733333333333`], FrameTicks -> None, 
                    PlotRangePadding -> None, ImageSize -> 
                    Dynamic[{
                    Automatic, 
                    1.35 (CurrentValue["FontCapHeight"]/AbsoluteCurrentValue[
                    Magnification])}]], "\[InvisibleSpace]"}], 
                    "RGBColor[0.528488, 0.470624, 0.701351]"], Appearance -> 
                    None, BaseStyle -> {}, BaselinePosition -> Baseline, 
                    DefaultBaseStyle -> {}, ButtonFunction :> 
                    With[{Typeset`box$ = EvaluationBox[]}, 
                    If[
                    Not[
                    AbsoluteCurrentValue["Deployed"]], 
                    SelectionMove[Typeset`box$, All, Expression]; 
                    FrontEnd`Private`$ColorSelectorInitialAlpha = 1; 
                    FrontEnd`Private`$ColorSelectorInitialColor = 
                    RGBColor[0.528488, 0.470624, 0.701351]; 
                    FrontEnd`Private`$ColorSelectorUseMakeBoxes = True; 
                    MathLink`CallFrontEnd[
                    FrontEnd`AttachCell[Typeset`box$, 
                    FrontEndResource["RGBColorValueSelector"], {
                    0, {Left, Bottom}}, {Left, Top}, 
                    "ClosingActions" -> {
                    "SelectionDeparture", "ParentChanged", 
                    "EvaluatorQuit"}]]]], BaseStyle -> Inherited, Evaluator -> 
                    Automatic, Method -> "Preemptive"], 
                    RGBColor[0.528488, 0.470624, 0.701351], Editable -> False,
                     Selectable -> False], ",", 
                   RowBox[{"AbsoluteThickness", "[", "1.6`", "]"}]}], "]"}]}],
              "}"}], ",", 
           RowBox[{"{", 
             RowBox[{#, ",", #2, ",", #3, ",", #4, ",", #5}], "}"}], ",", 
           RowBox[{"Joined", "\[Rule]", 
             RowBox[{"{", 
               
               RowBox[{
                "True", ",", "True", ",", "True", ",", "True", ",", "True"}], 
               "}"}]}], ",", 
           RowBox[{"LabelStyle", "\[Rule]", 
             RowBox[{"{", "}"}]}], ",", 
           RowBox[{"LegendLayout", "\[Rule]", "\"Column\""}], ",", 
           RowBox[{"LegendMarkers", "\[Rule]", 
             RowBox[{"{", 
               RowBox[{
                 RowBox[{"{", 
                   RowBox[{"False", ",", "Automatic"}], "}"}], ",", 
                 RowBox[{"{", 
                   RowBox[{"False", ",", "Automatic"}], "}"}], ",", 
                 RowBox[{"{", 
                   RowBox[{"False", ",", "Automatic"}], "}"}], ",", 
                 RowBox[{"{", 
                   RowBox[{"False", ",", "Automatic"}], "}"}], ",", 
                 RowBox[{"{", 
                   RowBox[{"False", ",", "Automatic"}], "}"}]}], "}"}]}]}], 
         "]"}]& ), Editable -> True], TraditionalForm], TraditionalForm]},
  "Legended",
  DisplayFunction->(GridBox[{{
      TagBox[
       ItemBox[
        PaneBox[
         TagBox[#, "SkipImageSizeLevel"], Alignment -> {Center, Baseline}, 
         BaselinePosition -> Baseline], DefaultBaseStyle -> "Labeled"], 
       "SkipImageSizeLevel"], 
      ItemBox[#2, DefaultBaseStyle -> "LabeledLabel"]}}, 
    GridBoxAlignment -> {"Columns" -> {{Center}}, "Rows" -> {{Center}}}, 
    AutoDelete -> False, GridBoxItemSize -> Automatic, 
    BaselinePosition -> {1, 1}]& ),
  Editable->True,
  InterpretationFunction->(RowBox[{"Legended", "[", 
     RowBox[{#, ",", 
       RowBox[{"Placed", "[", 
         RowBox[{#2, ",", "After"}], "]"}]}], "]"}]& )]], "Output",
 CellChangeTimes->{
  3.6178127065803957`*^9, 3.617812736672068*^9, {3.617813078085292*^9, 
   3.617813089536914*^9}, 3.617813625031599*^9, 3.6178154910260267`*^9}]
}, {2}]],

Cell["\<\
Looking at the plot above, you can reason as follows. I \
don\[CloseCurlyQuote]t know the total number of distinct signals (the number \
of categories) that the government operatives are using. However, I\
\[CloseCurlyQuote]ve now made 200 observations and for the past 100 of these \
observations I have not seen anything new. That means I\[CloseCurlyQuote]m on \
the flat part of one of these curves above. The plot above tells me on the \
flat side of the 20 categories curve. In other words, it\[CloseCurlyQuote]s \
almost certain that the total number of distinct signals used by the \
government operatives is 20. Now that doesn\[CloseCurlyQuote]t tell you what \
the signals mean, but at least its a start to decipering them.

During the Second World War, Allied Intelligence had the hard task of \
estimating the number of Mark V tanks the Germans were producing. \
Intelligence estimates were frustratingly inconsistent. In 1943 some \
statisticians devised a way to estimate the number of Mark V tanks each \
month. After the war, German documents revealed that the statisticians\
\[CloseCurlyQuote] estimates were off by a few percentage points while the \
Intelligence estimates were off by 400% to 800%. More recently, Roger \
Sessions has used this technique to minimize the architectural complexity of \
software through modular design.

Techniques like the one above can be modified to estimate production of \
goods, number of pages in a report, the number of distinct birth dates in a \
small room of people, and even get a handle on Rumsfeld\[CloseCurlyQuote]s \
\[OpenCurlyDoubleQuote]known unknowns\[CloseCurlyDoubleQuote] (e.g. how many \
species of fish in this lake do I not know about?).\
\>", "Text",
 CellChangeTimes->{{3.603659182962697*^9, 3.6036592878899384`*^9}, {
   3.6036597639877663`*^9, 3.6036597942507*^9}, {3.603660021440035*^9, 
   3.603660055779416*^9}, {3.603661145449648*^9, 3.6036612224407187`*^9}, {
   3.603662451932604*^9, 3.603662590358472*^9}, {3.603662997229898*^9, 
   3.603663088871876*^9}, {3.603663452392799*^9, 3.6036634846122513`*^9}, 
   3.6036637832446547`*^9, {3.603666992101037*^9, 3.603667011692765*^9}, {
   3.603672286097598*^9, 3.603672311301948*^9}, {3.603699843175473*^9, 
   3.60369987580266*^9}, {3.617812972797563*^9, 3.6178130298296022`*^9}, {
   3.617813170072838*^9, 3.617813309431279*^9}, {3.6178134709309464`*^9, 
   3.617813475058928*^9}, {3.617813683799501*^9, 3.617813722340444*^9}, {
   3.617813776229927*^9, 3.617813923496492*^9}}]
}, Open  ]],

Cell[CellGroupData[{

Cell["Rolling the Dice When Uncertainty is High", "Section",
 CellChangeTimes->{{3.6036635391200323`*^9, 3.603663608331895*^9}, {
  3.603664494686006*^9, 3.603664498714522*^9}, {3.6036654647506847`*^9, 
  3.603665480186138*^9}}],

Cell["\<\
Sometimes we know too little and there\[CloseCurlyQuote]s no way around it. \
But when we know a little about lots of things, that can turn out to be a \
good thing! 

Suppose we\[CloseCurlyQuote]re building a website (clinic, hospital, \
food/shelter station, or a road) but we know only a little about how heavily \
it will be used. How can we come up with a reasonable plan? We can reduce our \
uncertainty by (virtually) rolling the dice.

The approach below segments users of the resource into 4 groups. It then \
models the number of activitites or interactions each user generates and the \
intensity of these activities. Since we don\[CloseCurlyQuote]t know much \
about the actual number of activities or the intensity of each activity, we \
set up wide ranges for these values. The Monte Carlo approach treats each \
range of values like a multi-dimensional die. Here we\[CloseCurlyQuote]ve set \
up ranges for the number of activities a user performs and the intensity of \
each activity -- i.e. 2 multi-dimensional dice. We roll the dice lots of \
times and average over the outcomes to get a better grip on how much the \
resource will be used.\
\>", "Text",
 CellChangeTimes->{{3.603663611940934*^9, 3.603663626467204*^9}, 
   3.603663799141103*^9, {3.6036638325751038`*^9, 3.603663873754507*^9}, {
   3.603664205939098*^9, 3.6036642219432373`*^9}, {3.603664267591455*^9, 
   3.6036644830353127`*^9}, {3.6036649554927397`*^9, 3.603665303287766*^9}, {
   3.603665503457637*^9, 3.6036655450044823`*^9}, 3.6036723413100567`*^9, {
   3.603700547794484*^9, 3.603700635745275*^9}}],

Cell[BoxData[
 RowBox[{"(*", " ", 
  RowBox[{
   RowBox[{
   "**", "**", "**", "**", "**", "**", "**", "**", "**", "**", "**", "**"}], 
   "*", 
   RowBox[{"PARAMETERS", "**", "**"}], "*", 
   RowBox[{
   "**", "**", "**", "**", "**", "**", "**", "**", "**", "**", "**", "**"}]}],
   " ", "*)"}]], "Input",
 CellChangeTimes->{{3.545588577835621*^9, 3.5455885871644373`*^9}, {
  3.545589472083643*^9, 3.545589475078848*^9}}],

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", " ", "Initialization", " ", "*)"}], "\[IndentingNewLine]", 
  RowBox[{
   RowBox[{"Needs", "[", "\"\<HypothesisTesting`\>\"", "]"}], 
   ";"}]}]], "Input",
 CellChangeTimes->{{3.545476374006486*^9, 3.5454763882649107`*^9}, {
  3.545588523622012*^9, 3.545588531359626*^9}}],

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", " ", 
   RowBox[{
   "Number", " ", "of", " ", "trials", " ", "for", " ", "the", " ", "Monte", 
    " ", "Carlo", " ", "simulation"}], " ", "*)"}], "\[IndentingNewLine]", 
  RowBox[{
   RowBox[{"numTrials", " ", "=", " ", "3000"}], ";"}]}]], "Input",
 CellChangeTimes->{{3.545430533020383*^9, 3.545430538740391*^9}, {
   3.5454339419608235`*^9, 3.5454339423508244`*^9}, {3.5454370017455564`*^9, 
   3.5454370029855585`*^9}, {3.5454387452980275`*^9, 3.54543874687803*^9}, {
   3.5454758117658978`*^9, 3.545475813825102*^9}, {3.5454759790449915`*^9, 
   3.545475980838995*^9}, 3.545477891779951*^9, {3.5455160071786575`*^9, 
   3.545516008910261*^9}, {3.5455207460316763`*^9, 3.54552074805968*^9}, {
   3.54558694810283*^9, 3.5455869502868333`*^9}, {3.545588470060609*^9, 
   3.5455884924934483`*^9}, {3.545588709317438*^9, 3.545588724983719*^9}, {
   3.5455904520111675`*^9, 3.5455904536023703`*^9}, {3.545590602311773*^9, 
   3.5455906034193745`*^9}, {3.5455925409664*^9, 3.545592543181604*^9}, 
   3.5690116865918036`*^9, {3.569012065521477*^9, 3.5690120711547995`*^9}, {
   3.569013494218194*^9, 3.569013495068243*^9}, {3.569015416217126*^9, 
   3.569015416343133*^9}, 3.569015496811736*^9}],

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", " ", 
   RowBox[{
   "Number", " ", "of", " ", "working", " ", "days", " ", "and", " ", "hours",
     " ", "of", " ", "work", " ", "per", " ", "day"}], " ", "*)"}], 
  "\[IndentingNewLine]", 
  RowBox[{
   RowBox[{
    RowBox[{"wd", " ", "=", " ", 
     RowBox[{"numWorkingDaysPerYear", " ", "=", " ", "250"}]}], ";"}], 
   "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"wh", " ", "=", " ", 
     RowBox[{"numWorkingHoursPerDay", " ", "=", " ", "8"}]}], 
    ";"}]}]}]], "Input",
 CellChangeTimes->{{3.545430026499666*^9, 3.5454300496176987`*^9}, {
  3.545430290134039*^9, 3.5454303127456713`*^9}, {3.545588652484576*^9, 
  3.5455887177765064`*^9}, {3.569011285773878*^9, 3.569011315618585*^9}}],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", " ", 
   RowBox[{
    RowBox[{"Number", " ", "of", " ", "IEUs", " ", "by", " ", "type"}], " ", 
    "-", " ", 
    RowBox[{"data", " ", "provided", " ", "by", " ", "the", " ", "client"}]}],
    " ", "*)"}], "\[IndentingNewLine]", 
  RowBox[{
   RowBox[{
    RowBox[{"numLightIEU", " ", "=", " ", "1"}], ";"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"numStandardIEU", " ", "=", " ", "1"}], ";"}], 
   "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"numHeavyIEU", " ", "=", " ", "1"}], ";"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"numExtremelyHeavyIEU", " ", "=", " ", "1"}], ";"}], 
   "\[IndentingNewLine]", 
   RowBox[{"numTotalIEU", " ", "=", " ", 
    RowBox[{
    "numLightIEU", " ", "+", " ", "numStandardIEU", "+", "numHeavyIEU", "+", 
     "numExtremelyHeavyIEU"}]}]}]}]], "Input",
 CellChangeTimes->{{3.545428411950103*^9, 3.545428489589412*^9}, {
   3.545428534927876*^9, 3.5454285400278835`*^9}, {3.54542857350753*^9, 
   3.545428595735962*^9}, {3.545428631480412*^9, 3.54542865883045*^9}, {
   3.545428789475853*^9, 3.5454287908330555`*^9}, {3.545433398525246*^9, 
   3.545433406398857*^9}, {3.5455885542397237`*^9, 3.5455885563301277`*^9}, {
   3.54558875091422*^9, 3.5455887569514303`*^9}, {3.5455897808054767`*^9, 
   3.5455898826492505`*^9}, 3.545591645712038*^9, {3.5455920378655167`*^9, 
   3.54559209096801*^9}, {3.5455927410367517`*^9, 3.5455927462627606`*^9}, {
   3.545670770132992*^9, 3.54567082616829*^9}, 3.5456847084400873`*^9, {
   3.5499971752722974`*^9, 3.549997226679471*^9}, {3.549998249229524*^9, 
   3.5499982504463263`*^9}, {3.5517317547737756`*^9, 3.551731785381029*^9}, {
   3.5517320269318533`*^9, 3.5517320664623227`*^9}, {3.562499034424285*^9, 
   3.5624990440339017`*^9}, {3.5624992752419076`*^9, 3.562499286692328*^9}, {
   3.562499491676688*^9, 3.5624995264179487`*^9}, {3.5624996224049177`*^9, 
   3.5624996463821597`*^9}, {3.5624997349903154`*^9, 3.562499754225149*^9}, {
   3.5624998319132853`*^9, 3.562499855048126*^9}, {3.562499961627513*^9, 
   3.5624999849027543`*^9}, {3.562500095413348*^9, 3.562500115178583*^9}, {
   3.5625001885767117`*^9, 3.5625002059083424`*^9}, {3.562500274002462*^9, 
   3.5625002884324875`*^9}, {3.5625003659334235`*^9, 
   3.5625003774774437`*^9}, {3.562502214036519*^9, 3.5625022283923397`*^9}, {
   3.562502299989435*^9, 3.5625023088739433`*^9}, {3.562502385100303*^9, 
   3.562502396655964*^9}, {3.562502493117481*^9, 3.5625025121905727`*^9}, {
   3.562502576263237*^9, 3.5625026100471697`*^9}, {3.562502678667094*^9, 
   3.5625026872505856`*^9}, {3.5625027575166044`*^9, 3.562502775711645*^9}, {
   3.562502835313054*^9, 3.5625028495038657`*^9}, {3.562502897559614*^9, 
   3.5625029088022575`*^9}, {3.562503080803095*^9, 3.562503092268751*^9}, {
   3.5625031590175686`*^9, 3.562503174652463*^9}, {3.562503257755216*^9, 
   3.5625032744071684`*^9}, {3.5630190522957067`*^9, 
   3.5630190706517563`*^9}, {3.5630247892538424`*^9, 
   3.5630248087849593`*^9}, {3.563025191460847*^9, 3.56302520708374*^9}, {
   3.563035999885828*^9, 3.5630360240432096`*^9}, {3.563153971607524*^9, 
   3.5631539908966274`*^9}, {3.5631544235673747`*^9, 3.563154441874422*^9}, {
   3.563154753873267*^9, 3.563154765673942*^9}, {3.563155218585847*^9, 
   3.5631552371229076`*^9}, {3.5631556101302423`*^9, 3.563155624797081*^9}, {
   3.563233940487961*^9, 3.5632339698472123`*^9}, {3.5638962802963276`*^9, 
   3.5638962937380967`*^9}, {3.564415800680088*^9, 3.5644158195873213`*^9}, {
   3.5644275670256686`*^9, 3.5644275779522934`*^9}, {3.564429316900756*^9, 
   3.564429337989962*^9}, {3.5644483705382357`*^9, 3.564448391634443*^9}, {
   3.5645182089000263`*^9, 3.56451825144946*^9}, {3.5647566163099256`*^9, 
   3.5647566394022465`*^9}, {3.5647575370335875`*^9, 3.56475755927386*^9}, {
   3.5647808670800357`*^9, 3.5647808800681276`*^9}, {3.5647813379339743`*^9, 
   3.564781354558928*^9}, {3.564782021510994*^9, 3.564782046863908*^9}, {
   3.5648687916821947`*^9, 3.5648688109722977`*^9}, {3.5684871661699*^9, 
   3.56848719816173*^9}, {3.568970827907*^9, 3.5689708473758345`*^9}, {
   3.569006614773712*^9, 3.5690066211330757`*^9}, {3.5690067103761806`*^9, 
   3.5690067178746095`*^9}, {3.5691030252372932`*^9, 
   3.5691030384760504`*^9}, {3.56916528574389*^9, 3.569165292522278*^9}, {
   3.603664943749887*^9, 3.603664944203992*^9}}],

Cell[BoxData["4"], "Output",
 CellChangeTimes->{
  3.545684709344889*^9, 3.549997253622922*^9, 3.5499982611768007`*^9, 
   3.5499983183771315`*^9, 3.551734256097769*^9, 3.562499057777526*^9, 
   3.562499112252822*^9, 3.562499295724744*^9, 3.562499419588961*^9, 
   3.5624995338123617`*^9, 3.5624996690177994`*^9, 3.5624997607147603`*^9, 
   3.562499861412937*^9, 3.5625000026711855`*^9, 3.562500125880202*^9, 
   3.5625002180139637`*^9, 3.5625002988689055`*^9, 3.5625003914706683`*^9, 
   3.562502239349967*^9, 3.5625023162933674`*^9, 3.562502403142335*^9, 
   3.562502525306322*^9, 3.5625026209187913`*^9, 3.5625026933709354`*^9, 
   3.5625027824890327`*^9, 3.5625028540361247`*^9, 3.562502915541643*^9, 
   3.562503097896073*^9, 3.5625032109245377`*^9, 3.562503280177499*^9, 
   3.563019086181645*^9, 3.563024832091292*^9, 3.5630252231476593`*^9, 
   3.5630360330777264`*^9, 3.563153999718132*^9, 3.5631544548651648`*^9, 
   3.563154772827351*^9, 3.5631552524917865`*^9, 3.5631556331775603`*^9, 
   3.5632339840900373`*^9, 3.5638962995784307`*^9, 3.5639080831004095`*^9, 
   3.564415854734183*^9, 3.5644276028267164`*^9, 3.564429342520221*^9, 
   3.5644483987468495`*^9, {3.564518290352685*^9, 3.564518304350486*^9}, 
   3.564756648123745*^9, 3.564757563612108*^9, 3.5647808900476985`*^9, 
   3.564781358568135*^9, {3.564782068367732*^9, 3.564782080354418*^9}, 
   3.564868818159709*^9, 3.5684872074292603`*^9, 3.5689720781243963`*^9, 
   3.5689777132130938`*^9, 3.5689800948884773`*^9, 3.568986259636958*^9, 
   3.5689869566149826`*^9, {3.568988259738073*^9, 3.568988278754506*^9}, 
   3.5689928947246137`*^9, 3.568992952319915*^9, 3.5690065900762997`*^9, 
   3.569006624662278*^9, 3.5690067224038687`*^9, 3.5690720216969843`*^9, 
   3.5690798656816344`*^9, 3.569081436291468*^9, 3.5690931471792927`*^9, 
   3.569093632522053*^9, 3.569103040697177*^9, 3.5691625384277525`*^9, 
   3.569166712538498*^9, 3.5691675440810595`*^9, 3.5691679382286034`*^9, 
   3.5692885974738693`*^9, 3.569289614409656*^9, 3.5697801569303284`*^9, 
   3.5732963132829766`*^9, 3.5732969113361835`*^9, 3.603566108345805*^9, 
   3.603665348860553*^9, 3.6036719886062393`*^9, 3.60370371506007*^9, 
   3.6178115967491617`*^9, 3.617815491477672*^9}]
}, {2}]],

Cell[BoxData[
 RowBox[{
  RowBox[{"numUsers", " ", "=", " ", 
   RowBox[{"{", 
    RowBox[{
    "numLightIEU", ",", " ", "numStandardIEU", ",", " ", "numHeavyIEU", ",", 
     " ", "numExtremelyHeavyIEU"}], "}"}]}], ";"}]], "Input",
 CellChangeTimes->{{3.5690209639714394`*^9, 3.5690210016125927`*^9}}],

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", " ", 
   RowBox[{
   "Distribution", " ", "of", " ", "activities", " ", "by", " ", "user", " ", 
    "type", " ", "by", " ", "level"}], " ", "*)"}], "\[IndentingNewLine]", 
  RowBox[{"(*", " ", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"%", " ", "level", " ", "1", " ", "activity"}], ",", " ", "...", 
     ",", " ", 
     RowBox[{"%", " ", "level", " ", "5", " ", "activity"}]}], "}"}], " ", 
   "*)"}], "\[IndentingNewLine]", 
  RowBox[{"(*", " ", 
   RowBox[{"DO", " ", "NOT", " ", "CHANGE"}], " ", "*)"}], 
  "\[IndentingNewLine]", 
  RowBox[{
   RowBox[{
    RowBox[{"dLight", " ", "=", " ", 
     RowBox[{"activityDistributionLightIEU", " ", "=", " ", 
      RowBox[{"{", 
       RowBox[{
       "0.7", ",", " ", "0.2", ",", " ", "0.06", ",", " ", "0.035", ",", " ", 
        "0.005"}], "}"}]}]}], ";"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"dStd", " ", "=", " ", 
     RowBox[{"activityDistributionStandardIEU", " ", "=", " ", 
      RowBox[{"{", 
       RowBox[{
       "0.7", ",", "0.2", ",", "0.06", ",", "0.035", ",", " ", "0.005"}], 
       "}"}]}]}], ";"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"dHeavy", " ", "=", " ", 
     RowBox[{"activityDistributionHeavyIEU", " ", "=", " ", 
      RowBox[{"{", 
       RowBox[{
       "0.6", ",", " ", "0.3", ",", " ", "0.06", ",", " ", "0.035", ",", " ", 
        "0.005"}], "}"}]}]}], ";"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"dExHeavy", " ", "=", " ", 
     RowBox[{"activityDistributionExtremelyHeavyIEU", " ", "=", " ", 
      RowBox[{"{", 
       RowBox[{"0.5", ",", "0.4", ",", "0.06", ",", "0.03", ",", "0.01"}], 
       "}"}]}]}], ";"}]}]}]], "Input",
 CellChangeTimes->{{3.545588335197672*^9, 3.5455884454886556`*^9}, {
  3.5455927930160427`*^9, 3.5455927996460543`*^9}, {3.551732165007696*^9, 
  3.551732200357358*^9}, {3.569011834310253*^9, 3.569011851598242*^9}}],

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", " ", 
   RowBox[{"LOAD", " ", "FACTORS"}], " ", "*)"}], "\[IndentingNewLine]", 
  RowBox[{"(*", " ", 
   RowBox[{
   "Applied", " ", "to", " ", "remove", " ", "the", " ", "level", " ", 
    "dimension", " ", "from", " ", "activities", " ", "so", " ", "that", " ", 
    "there", " ", "is", " ", "only", " ", "one", " ", "kind", " ", "of", " ", 
    "activity", " ", "after", " ", "the", " ", "load", " ", "factor", " ", 
    "is", " ", 
    RowBox[{"applied", "."}]}], " ", "*)"}], "\[IndentingNewLine]", 
  RowBox[{"(*", " ", 
   RowBox[{"DO", " ", "NOT", " ", "CHANGE"}], " ", "*)"}], 
  "\[IndentingNewLine]", 
  RowBox[{
   RowBox[{"loadFactorByActivityLevel", " ", "=", " ", 
    RowBox[{"{", 
     RowBox[{"1", ",", " ", "3", ",", "5", ",", "100", ",", " ", "1000"}], 
     "}"}]}], ";"}]}]], "Input",
 CellChangeTimes->{{3.545438614226643*^9, 3.545438634601472*^9}, {
  3.5454637656933556`*^9, 3.5454637806069813`*^9}, {3.545589193611724*^9, 
  3.545589209356406*^9}, {3.545592809567672*^9, 3.545592818256887*^9}}],

Cell[BoxData[
 RowBox[{"(*", " ", 
  RowBox[{
   RowBox[{
   "**", "**", "**", "**", "**", "**", "**", "**", "**", "**", "**", "**", "**",
     "**", "**", "END"}], " ", 
   RowBox[{
   "PARAMETERS", "**", "**", "**", "**", "**", "**", "**", "**", "**", "**", "**",
     "**", "**", "**", "**", "**", "**", "**"}], "*"}], " ", "*)"}]], "Input",\

 CellChangeTimes->{{3.5455894834872627`*^9, 3.5455894970241947`*^9}}],

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", " ", 
   RowBox[{
   "Range", " ", "in", " ", "number", " ", "of", " ", "activities", " ", 
    "PER", " ", "HOUR", " ", "by", " ", "user", " ", "type"}], " ", "*)"}], 
  "\[IndentingNewLine]", 
  RowBox[{"(*", " ", 
   RowBox[{"DO", " ", "NOT", " ", "CHANGE"}], " ", "*)"}], 
  "\[IndentingNewLine]", 
  RowBox[{"(*", " ", 
   RowBox[{
    RowBox[{"SCENARIOS", " ", "1"}], ",", " ", "2", ",", " ", "3"}], " ", 
   "*)"}], "\[IndentingNewLine]", 
  RowBox[{
   RowBox[{
    RowBox[{"numActivitiesPerHourLightIEU", " ", "=", " ", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{"0", ",", "10"}], "}"}], ",", " ", 
       RowBox[{"{", 
        RowBox[{"0", ",", "10"}], "}"}], ",", " ", 
       RowBox[{"{", 
        RowBox[{"0", ",", "10"}], "}"}]}], "}"}]}], ";"}], 
   "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"numActivitiesPerHourStandardIEU", " ", "=", " ", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{"10", ",", "20"}], "}"}], ",", " ", 
       RowBox[{"{", 
        RowBox[{"10", ",", "20"}], "}"}], ",", " ", 
       RowBox[{"{", 
        RowBox[{"10", ",", "20"}], "}"}]}], "}"}]}], ";"}], 
   "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"numActivitiesPerHourHeavyIEU", " ", "=", " ", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{"20", ",", "60"}], "}"}], ",", " ", 
       RowBox[{"{", 
        RowBox[{"20", ",", "50"}], "}"}], ",", " ", 
       RowBox[{"{", 
        RowBox[{"20", ",", " ", "40"}], "}"}]}], "}"}]}], ";"}], " ", 
   "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"numActivitiesPerHourExtremelyHeavyIEU", " ", "=", " ", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{"60", ",", "100"}], "}"}], ",", " ", 
       RowBox[{"{", 
        RowBox[{"50", ",", "90"}], "}"}], ",", " ", 
       RowBox[{"{", 
        RowBox[{"40", ",", "80"}], "}"}]}], "}"}]}], ";"}]}]}]], "Input",
 CellChangeTimes->{{3.5454288832372155`*^9, 3.545428883814417*^9}, {
   3.5454289283220897`*^9, 3.545428962297347*^9}, {3.5454290139646378`*^9, 
   3.545429025223056*^9}, {3.545429948039956*^9, 3.545429955611966*^9}, {
   3.545430107914981*^9, 3.5454301111449857`*^9}, {3.5455888373413897`*^9, 
   3.545588992015814*^9}, {3.545589023016181*^9, 3.5455890639575624`*^9}, {
   3.545592769678402*^9, 3.545592780801221*^9}, {3.5517320995655813`*^9, 
   3.551732151919273*^9}, {3.5616703504633503`*^9, 3.5616703833502307`*^9}, {
   3.561672147562138*^9, 3.5616721600148506`*^9}, {3.564395701875677*^9, 
   3.5643957081624885`*^9}, {3.564395831527505*^9, 3.5643958857064004`*^9}, {
   3.5666599545563183`*^9, 3.5666600469084806`*^9}, {3.5674774999958825`*^9, 
   3.5674775486367683`*^9}, {3.5677606261343155`*^9, 
   3.5677606516403604`*^9}, {3.567760770481369*^9, 3.567760788593001*^9}, {
   3.567760842085495*^9, 3.5677608916311817`*^9}, {3.5677609534852905`*^9, 
   3.567761021017809*^9}, {3.5677612821622677`*^9, 3.567761417788906*^9}, {
   3.5677638242023325`*^9, 3.5677639828078113`*^9}, 3.567764376053302*^9}],

Cell[BoxData[
 RowBox[{"\[IndentingNewLine]", 
  RowBox[{"(*", " ", 
   RowBox[{
    RowBox[{
     RowBox[{"PICK", " ", "THE", " ", "SCENARIO"}], " ", "-", " ", 
     RowBox[{"IT", " ", "CAN", " ", "BE", " ", "1"}]}], ",", " ", "2", ",", 
    " ", 
    RowBox[{"or", " ", "3"}]}], " ", "*)"}], "\[IndentingNewLine]", 
  RowBox[{
   RowBox[{
    RowBox[{"scenario", " ", "=", " ", "1"}], ";"}], "\[IndentingNewLine]", 
   "\[IndentingNewLine]", 
   RowBox[{"(*", " ", 
    RowBox[{
    "SET", " ", "THE", " ", "ACTIVITY", " ", "LEVELS", " ", "FOR", " ", "THE",
      " ", "SCENARIO"}], " ", "*)"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"nRangeLight", " ", "=", " ", 
     RowBox[{"numActivitiesPerHourLightIEU", " ", "[", 
      RowBox[{"[", "scenario", "]"}], "]"}]}], ";"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"nRangeStd", " ", "=", " ", 
     RowBox[{"numActivitiesPerHourStandardIEU", " ", "[", 
      RowBox[{"[", "scenario", "]"}], "]"}]}], ";"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"nRangeHeavy", " ", "=", " ", 
     RowBox[{"numActivitiesPerHourHeavyIEU", " ", "[", 
      RowBox[{"[", "scenario", "]"}], "]"}]}], ";"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"nRangeExHeavy", " ", "=", " ", 
     RowBox[{"numActivitiesPerHourExtremelyHeavyIEU", " ", "[", 
      RowBox[{"[", "scenario", "]"}], "]"}]}], ";"}]}]}]], "Input",
 CellChangeTimes->CompressedData["
1:eJxTTMoPSmViYGAQBWIQ/cDRm/37lFeOdiZ3OUE0w6JDmiB6SnKfGYi2unoh
9weQnsj+vwBEi7I9KQXRV6r+g2nuRzrTfoL0PTAE005/vlximPrKUfu9yGUQ
fSXuZiEjkJ4VewdMO2jtN2AC0mwKN8B09FMrPr/pQPnQRDDtM+ORRQCQZuth
sATRuz52hIHotoz5YPqM9N51kUBaQuYimM4X/RbUBqSncYoEg+gLrS/jQPS5
YrZ4EP2u8V39EiD9QZa9AURfa9KduhRIJyW4gekXixyPg+jWsnwwfaLxisFD
IP3x/w0wfbS1bduFGa8cZdYuBtMOosents5/5bha8i6Ytv1QYFt0ExhOGcvt
QDQA8tq1Gg==
  "]],

Cell[BoxData["\[IndentingNewLine]"], "Input",
 CellChangeTimes->{3.5455895016886024`*^9}],

Cell[BoxData[
 RowBox[{"(*", " ", 
  RowBox[{
   RowBox[{
   "**", "**", "**", "**", "**", "**", "**", "**", "**", "**", "**", "**", "**",
     "**", "**", "BEGIN"}], " ", 
   RowBox[{"CALCULATIONS", "**", "**", "**"}], "*", "*", 
   RowBox[{
   "**", "**", "**", "**", "**", "**", "**", "**", "**", "**", "**", "**"}], 
   "*"}], " ", "*)"}]], "Input",
 CellChangeTimes->{{3.5455892446635227`*^9, 3.5455892551573973`*^9}}],

Cell[BoxData[
 RowBox[{"(*", " ", 
  RowBox[{
  "Generate", " ", "the", " ", "total", " ", "number", " ", "of", " ", 
   "activities", " ", "per", " ", "year", " ", "for", " ", "each", " ", 
   "user", " ", "type"}], " ", "*)"}]], "Input",
 CellChangeTimes->{{3.545430771919119*^9, 3.545430792607148*^9}, {
  3.545589358305456*^9, 3.545589372697337*^9}}],

Cell[BoxData[
 RowBox[{"(*", " ", 
  RowBox[{
   RowBox[{"Hour", " ", "by", " ", "hour"}], ",", " ", 
   RowBox[{
   "a", " ", "single", " ", "user", " ", "will", " ", "generate", " ", "the", 
    " ", "following", " ", "number", " ", "of", " ", "events", " ", "through",
     " ", "the", " ", "course", " ", "of", " ", "the", " ", "year"}]}], " ", 
  "*)"}]], "Input",
 CellChangeTimes->{{3.5690113665324974`*^9, 3.5690114050747023`*^9}}],

Cell[BoxData[
 RowBox[{
  RowBox[{"lighteventsPerHourPerYear", " ", "=", " ", 
   RowBox[{"RandomInteger", "[", 
    RowBox[{"nRangeLight", ",", " ", 
     RowBox[{"wd", " ", "*", " ", "wh"}]}], "]"}]}], ";"}]], "Input",
 CellChangeTimes->{{3.56901125223496*^9, 3.5690112736761866`*^9}, {
  3.569011347098386*^9, 3.569011357053955*^9}, {3.569011436701511*^9, 
  3.5690114847842607`*^9}, {3.5690115841489444`*^9, 3.569011585521023*^9}, {
  3.5690154454567986`*^9, 3.5690154464728565`*^9}, {3.603665407368732*^9, 
  3.6036654089893007`*^9}}],

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", " ", 
   RowBox[{
    RowBox[{"In", " ", "n", " ", "trials"}], ",", " ", 
    RowBox[{
     RowBox[{
     "a", " ", "single", " ", "user", " ", "will", " ", "generate", " ", "n", 
      " ", "sets", " ", "of", " ", "hour"}], "-", "by", "-", 
     RowBox[{
     "hour", " ", "events", " ", "through", " ", "the", " ", "course", " ", 
      "of", " ", "the", " ", "year"}]}]}], " ", "*)"}], "\[IndentingNewLine]", 
  RowBox[{
   RowBox[{"lighteventsPerHourPerYearNTrials", " ", "=", " ", 
    RowBox[{"Table", "[", 
     RowBox[{
      RowBox[{"RandomInteger", "[", 
       RowBox[{"nRangeLight", ",", " ", 
        RowBox[{"wd", " ", "*", " ", "wh"}]}], "]"}], ",", " ", 
      RowBox[{"{", "numTrials", "}"}]}], "]"}]}], ";"}]}]], "Input",
 CellChangeTimes->{{3.5690114917346587`*^9, 3.5690115276057105`*^9}, {
  3.5690115616306562`*^9, 3.56901169649037*^9}}],

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", " ", 
   RowBox[{
   "Count", " ", "up", " ", "the", " ", "total", " ", "number", " ", "of", 
    " ", "activities", " ", "in", " ", "each", " ", "trial"}], " ", "*)"}], 
  "\[IndentingNewLine]", 
  RowBox[{
   RowBox[{"lighteventsPerTrial", " ", "=", " ", 
    RowBox[{
     RowBox[{
      RowBox[{"Total", "[", "#", "]"}], " ", "&"}], " ", "/@", " ", 
     "lighteventsPerHourPerYearNTrials"}]}], ";"}]}]], "Input",
 CellChangeTimes->{{3.5690117856194677`*^9, 3.5690118224965773`*^9}, {
   3.5690118760636406`*^9, 3.569011927330573*^9}, {3.5690120353067493`*^9, 
   3.569012050343609*^9}, {3.5690121093539844`*^9, 3.569012181515112*^9}, 
   3.569015429192868*^9}],

Cell[BoxData[
 RowBox[{"(*", " ", 
  RowBox[{
   RowBox[{"In", " ", "each", " ", "trial"}], ",", " ", 
   RowBox[{
   "find", " ", "the", " ", "number", " ", "of", " ", "activities", " ", 
    "that", " ", "are", " ", "in", " ", "Level", " ", "1", " ", "through", 
    " ", "Level", " ", 
    RowBox[{"5", " ", "--"}], " ", "this", " ", "is", " ", "determined", " ", 
    "by", " ", "a", " ", "fixed", " ", "distribution", " ", "of", " ", 
    "activities", " ", "by", " ", "level", " ", "by", " ", "user", " ", 
    "type"}]}], " ", "*)"}]], "Input",
 CellChangeTimes->{{3.569012242723613*^9, 3.5690122869041395`*^9}}],

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", " ", 
   RowBox[{
    RowBox[{
    "The", " ", "result", " ", "is", " ", "transposed", " ", "to", " ", 
     "collect", " ", "up", " ", "all", " ", "level", " ", "1", " ", 
     "activities"}], ",", " ", 
    RowBox[{"level", " ", "2", " ", "actitivities"}], ",", " ", 
    RowBox[{"etc", "."}]}], " ", "*)"}], "\[IndentingNewLine]", 
  RowBox[{
   RowBox[{"lighteventsPerTrialByLevel", " ", "=", 
    RowBox[{"Transpose", "[", 
     RowBox[{
      RowBox[{
       RowBox[{"(", " ", 
        RowBox[{"#", " ", "*", " ", "dLight"}], ")"}], " ", "&"}], " ", "/@", 
      " ", "lighteventsPerTrial"}], "]"}]}], ";"}]}]], "Input",
 CellChangeTimes->{{3.5690122280007706`*^9, 3.569012238714383*^9}, {
   3.5690122919534283`*^9, 3.5690123289155426`*^9}, {3.569012359104269*^9, 
   3.56901241052121*^9}, {3.569013389844224*^9, 3.56901346739666*^9}, 
   3.5690154315730047`*^9}],

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", " ", 
   RowBox[{"Complexity", "-", 
    RowBox[{
    "weighted", " ", "activity", " ", "counts", " ", "by", " ", "level"}]}], 
   " ", "*)"}], "\[IndentingNewLine]", 
  RowBox[{
   RowBox[{
    RowBox[{"lighteventsPerTrialByLevelCW", " ", "=", " ", 
     RowBox[{"Table", "[", 
      RowBox[{
       RowBox[{
        RowBox[{"lighteventsPerTrialByLevel", "[", 
         RowBox[{"[", "i", "]"}], "]"}], " ", "*", " ", 
        RowBox[{"loadFactorByActivityLevel", "[", 
         RowBox[{"[", "i", "]"}], "]"}]}], ",", " ", 
       RowBox[{"{", 
        RowBox[{"i", ",", " ", "1", ",", " ", "5"}], "}"}]}], "]"}]}], ";"}], 
   "\[IndentingNewLine]"}]}]], "Input",
 CellChangeTimes->{{3.5690127348157587`*^9, 3.5690127918810225`*^9}, {
   3.5690129470098953`*^9, 3.5690129644648943`*^9}, {3.569013275458682*^9, 
   3.5690133427095284`*^9}, 3.5690136124179544`*^9, {3.5690137985536013`*^9, 
   3.569013965219134*^9}, 3.5690154353042183`*^9}],

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", " ", 
   RowBox[{
   "BUILD", " ", "FUNCTION", " ", "TO", " ", "GENERATE", " ", "ACTIVITY", " ",
     "COUNTS", " ", "BY", " ", "USER", " ", "TYPE", " ", "AND", " ", "LEVEL", 
    " ", "OVER", " ", "nTrials"}], " ", "*)"}], "\[IndentingNewLine]", 
  RowBox[{"(*", " ", 
   RowBox[{
   "Assume", " ", "that", " ", "there", " ", "is", " ", "only", " ", "1", " ",
     "user", " ", "of", " ", "a", " ", "certain", " ", 
    RowBox[{"type", " ", "--"}], " ", "later", " ", "we", " ", "can", " ", 
    "use", " ", "the", " ", "number", " ", "of", " ", "users", " ", 
    "provided", " ", "to", " ", "calculate", " ", "the", " ", "total", " ", 
    "activity", " ", "counts", " ", "by", " ", "level", " ", "across", " ", 
    "all", " ", "user", " ", "types"}], " ", "*)"}], "\[IndentingNewLine]", 
  RowBox[{
   RowBox[{
    RowBox[{"actsByLevel", "[", 
     RowBox[{
     "rangeOfActsPerHour_", ",", " ", "distOfActsByLevel_", ",", " ", 
      RowBox[{"weighted_:", "0"}]}], "]"}], ":=", " ", 
    RowBox[{"Module", "[", "\[IndentingNewLine]", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{
        RowBox[{"workDaysPerYear", " ", "=", " ", "10"}], ",", 
        "\[IndentingNewLine]", 
        RowBox[{"workHoursPerDay", " ", "=", " ", "8"}], ",", " ", 
        "\[IndentingNewLine]", 
        RowBox[{"nTrials", " ", "=", " ", "5000"}], ",", " ", 
        "\[IndentingNewLine]", 
        RowBox[{"loadFactorByActivityLevel", " ", "=", " ", 
         RowBox[{"{", 
          RowBox[{
          "1", ",", " ", "3", ",", "5", ",", "100", ",", " ", "1000"}], 
          "}"}]}], ",", "\[IndentingNewLine]", "eventsPerHourPerYear", ",", 
        " ", "\[IndentingNewLine]", "eventsPerHourPerYearNTrials", ",", " ", 
        "\[IndentingNewLine]", "totalEventsPerTrial", ",", " ", 
        "\[IndentingNewLine]", "eventsPerTrialByLevel", ",", " ", 
        "\[IndentingNewLine]", "eventsPerTrialByLevelCW"}], "}"}], ",", 
      "\[IndentingNewLine]", 
      RowBox[{"(*", " ", 
       RowBox[{"weighted", " ", "=", " ", 
        RowBox[{
         RowBox[{"1", " ", "generates", " ", "complexity"}], "-", 
         RowBox[{"weighted", " ", "counts", " ", "by", " ", "level"}]}]}], 
       " ", "*)"}], "\[IndentingNewLine]", 
      RowBox[{"(*", " ", 
       RowBox[{
        RowBox[{"Hour", " ", "by", " ", "hour"}], ",", " ", 
        RowBox[{
        "a", " ", "single", " ", "user", " ", "will", " ", "generate", " ", 
         "the", " ", "following", " ", "number", " ", "of", " ", "events", 
         " ", "through", " ", "the", " ", "course", " ", "of", " ", "the", 
         " ", "year"}]}], " ", "*)"}], "\[IndentingNewLine]", 
      RowBox[{
       RowBox[{"eventsPerHourPerYear", " ", "=", " ", 
        RowBox[{"RandomInteger", "[", 
         RowBox[{"rangeOfActsPerHour", ",", " ", 
          RowBox[{"wd", " ", "*", " ", "wh"}]}], "]"}]}], ";", 
       "\[IndentingNewLine]", 
       RowBox[{"(*", " ", 
        RowBox[{
         RowBox[{"In", " ", "n", " ", "trials"}], ",", " ", 
         RowBox[{
          RowBox[{
          "a", " ", "single", " ", "user", " ", "will", " ", "generate", " ", 
           "n", " ", "sets", " ", "of", " ", "hour"}], "-", "by", "-", 
          RowBox[{
          "hour", " ", "events", " ", "through", " ", "the", " ", "course", 
           " ", "of", " ", "the", " ", "year"}]}]}], " ", "*)"}], 
       "\[IndentingNewLine]", 
       RowBox[{"eventsPerHourPerYearNTrials", " ", "=", " ", 
        RowBox[{"Table", "[", 
         RowBox[{
          RowBox[{"RandomInteger", "[", 
           RowBox[{"rangeOfActsPerHour", ",", " ", 
            RowBox[{"wd", " ", "*", " ", "wh"}]}], "]"}], ",", " ", 
          RowBox[{"{", "nTrials", "}"}]}], "]"}]}], ";", 
       "\[IndentingNewLine]", 
       RowBox[{"(*", " ", 
        RowBox[{
        "Count", " ", "up", " ", "the", " ", "total", " ", "number", " ", 
         "of", " ", "activities", " ", "in", " ", "each", " ", "trial"}], " ",
         "*)"}], "\[IndentingNewLine]", 
       RowBox[{"totalEventsPerTrial", " ", "=", " ", 
        RowBox[{
         RowBox[{
          RowBox[{"Total", "[", "#", "]"}], " ", "&"}], " ", "/@", " ", 
         "eventsPerHourPerYearNTrials"}]}], ";", "\[IndentingNewLine]", 
       RowBox[{"(*", " ", 
        RowBox[{
         RowBox[{"In", " ", "each", " ", "trial"}], ",", " ", 
         RowBox[{
         "find", " ", "the", " ", "number", " ", "of", " ", "activities", " ",
           "that", " ", "are", " ", "in", " ", "Level", " ", "1", " ", 
          "through", " ", "Level", " ", 
          RowBox[{"5", " ", "--"}], " ", "this", " ", "is", " ", "determined",
           " ", "by", " ", "a", " ", "fixed", " ", "distribution", " ", "of", 
          " ", "activities", " ", "by", " ", "level", " ", "by", " ", "user", 
          " ", "type"}]}], " ", "*)"}], "\[IndentingNewLine]", 
       RowBox[{"(*", " ", 
        RowBox[{
         RowBox[{
         "The", " ", "result", " ", "is", " ", "transposed", " ", "to", " ", 
          "collect", " ", "up", " ", "all", " ", "level", " ", "1", " ", 
          "activities"}], ",", " ", 
         RowBox[{"level", " ", "2", " ", "actitivities"}], ",", " ", 
         RowBox[{"etc", "."}]}], " ", "*)"}], "\[IndentingNewLine]", 
       RowBox[{"(*", " ", 
        RowBox[{
         RowBox[{
         "The", " ", "result", " ", "is", " ", "a", " ", "set", " ", "of", 
          " ", "5", " ", "subsets"}], ";", " ", 
         RowBox[{
         "each", " ", "subset", " ", "represents", " ", "a", " ", "level", 
          " ", "of", " ", "activity", " ", "from", " ", "1", " ", "to", " ", 
          "5"}], ";", " ", 
         RowBox[{
         "each", " ", "element", " ", "within", " ", "a", " ", "subset", " ", 
          "is", " ", "the", " ", "number", " ", "of", " ", "activiites", " ", 
          "generated", " ", "at", " ", "that", " ", "level", " ", "during", 
          " ", "that", " ", "trial"}]}], " ", "*)"}], "\[IndentingNewLine]", 
       RowBox[{"eventsPerTrialByLevel", " ", "=", 
        RowBox[{"Transpose", "[", 
         RowBox[{
          RowBox[{
           RowBox[{"(", " ", 
            RowBox[{"#", " ", "*", " ", "distOfActsByLevel"}], ")"}], " ", 
           "&"}], " ", "/@", " ", "totalEventsPerTrial"}], "]"}]}], ";", 
       "\[IndentingNewLine]", 
       RowBox[{"(*", " ", 
        RowBox[{"Complexity", "-", 
         RowBox[{
         "weighted", " ", "activity", " ", "counts", " ", "by", " ", 
          "level"}]}], " ", "*)"}], "\[IndentingNewLine]", 
       RowBox[{"eventsPerTrialByLevelCW", " ", "=", " ", 
        RowBox[{"Table", "[", 
         RowBox[{
          RowBox[{
           RowBox[{"eventsPerTrialByLevel", "[", 
            RowBox[{"[", "i", "]"}], "]"}], " ", "*", " ", 
           RowBox[{"loadFactorByActivityLevel", "[", 
            RowBox[{"[", "i", "]"}], "]"}]}], ",", " ", 
          RowBox[{"{", 
           RowBox[{"i", ",", " ", "1", ",", " ", "5"}], "}"}]}], "]"}]}], ";",
        "\[IndentingNewLine]", 
       RowBox[{"If", "[", 
        RowBox[{
         RowBox[{"weighted", " ", "\[Equal]", " ", "1"}], ",", " ", 
         "eventsPerTrialByLevelCW", ",", " ", "eventsPerTrialByLevel"}], 
        "]"}]}]}], "\[IndentingNewLine]", "]"}]}], ";"}]}]], "Input",
 CellChangeTimes->CompressedData["
1:eJxTTMoPSmViYGCQBGIQLaPz6ET09FeO81p6ToJoo8ozV0H0kd/3HoPoF+4r
mGOA9JSrR/lBtK/49a8g2lCZ+SeIrlu9zigWSCvsSjMB0TlhnFYg+txZH0cQ
nXS73w1E/1v20wNEu/Hw+ILogBr3WBDdN/VyIogun+ZdA6I7G1ZPANGHw/fO
AdGXLv5eCKJ/sT9YCaJXZB+yjQPSoV8iHEB04Oece2VAOiNT4zGItrC4xlQO
pLPm8zCDaPEDq+1BtJSYuQOI9uXVcAfRciX6PiB6392ZwSBa1ul/Moh+MuNg
FoguuRCfDaI/vfM+D6JneYlcAdH7u+78ANEZa7wZK4D0nycJXCC6r/saL4gO
Cvr2txJIf+md9A9Eb/3T41IFpMvMVoJpoy3CHSB63/kgMO2m2NdZDaQ5lu8E
0wAZUdNV
  "]],

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", " ", 
   RowBox[{
   "Adding", " ", "up", " ", "the", " ", "events", " ", "across", " ", "all", 
    " ", "levels", " ", "for", " ", "each", " ", "trial"}], " ", "*)"}], 
  "\[IndentingNewLine]", 
  RowBox[{
   RowBox[{
    RowBox[{"totalsByTrial", "[", "levelsData_", "]"}], ":=", " ", 
    RowBox[{"Module", "[", 
     RowBox[{
      RowBox[{"{", "}"}], ",", "\[IndentingNewLine]", 
      RowBox[{"(*", " ", 
       RowBox[{
        RowBox[{
        "levelsData", " ", "must", " ", "be", " ", "the", " ", "complexity"}],
         "-", 
        RowBox[{
        "weighted", " ", "activities", " ", "by", " ", "level", " ", "for", 
         " ", "each", " ", "trail"}]}], " ", "*)"}], "\[IndentingNewLine]", 
      RowBox[{
       RowBox[{
        RowBox[{"Total", "[", "#", "]"}], " ", "&"}], " ", "/@", " ", 
       RowBox[{"Transpose", "[", "levelsData", "]"}]}]}], 
     "\[IndentingNewLine]", "]"}]}], ";"}]}]], "Input",
 CellChangeTimes->{{3.569073165176388*^9, 3.5690732259878654`*^9}, {
  3.5690732687183094`*^9, 3.56907327817185*^9}, {3.569073317547103*^9, 
  3.569073320772287*^9}, {3.569073431413615*^9, 3.56907343831701*^9}, {
  3.5690743446538496`*^9, 3.5690744657367754`*^9}, {3.5690755881019707`*^9, 
  3.5690756264391637`*^9}, {3.5691005630734653`*^9, 3.569100583679644*^9}}],

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", " ", 
   RowBox[{
   "Mean", " ", "total", " ", "value", " ", "of", " ", "activities", " ", 
    "across", " ", "all", " ", "levels"}], " ", "*)"}], "\[IndentingNewLine]", 
  RowBox[{
   RowBox[{
    RowBox[{"meanTotalsByTrial", "[", "levelsData_", "]"}], ":=", " ", 
    RowBox[{"Module", "[", 
     RowBox[{
      RowBox[{"{", "}"}], ",", "\[IndentingNewLine]", 
      RowBox[{"(*", " ", 
       RowBox[{
        RowBox[{
        "levelsData", " ", "must", " ", "be", " ", "the", " ", "complexity"}],
         "-", 
        RowBox[{
        "weighted", " ", "activities", " ", "by", " ", "level", " ", "for", 
         " ", "each", " ", "trail"}]}], " ", "*)"}], "\[IndentingNewLine]", 
      RowBox[{"Mean", "[", 
       RowBox[{"totalsByTrial", "[", "levelsData", "]"}], "]"}]}], 
     "\[IndentingNewLine]", "]"}]}], ";"}]}]], "Input",
 CellChangeTimes->{{3.5691008398702974`*^9, 3.569100945784355*^9}}],

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", " ", 
   RowBox[{
   "Now", " ", "we", " ", "can", " ", "calculate", " ", "the", " ", "stats", 
    " ", "for", " ", "each", " ", "level", " ", "of", " ", "activity", " ", 
    "across", " ", "all", " ", "the", " ", "trials", " ", "and", " ", 
    "display", " ", "them"}], " ", "*)"}], "\[IndentingNewLine]", 
  RowBox[{
   RowBox[{
    RowBox[{"dStats", "[", 
     RowBox[{"levelsData_", ",", " ", 
      RowBox[{"histo_:", "0"}]}], "]"}], ":=", " ", 
    RowBox[{"Module", "[", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{
       "in", ",", " ", "hist", ",", " ", "rowHeadings", ",", " ", 
        "colHeadings", ",", " ", "out"}], "}"}], ",", "\[IndentingNewLine]", 
      RowBox[{"(*", " ", 
       RowBox[{
       "levelsData", " ", "is", " ", "the", " ", "output", " ", "of", " ", 
        "the", " ", "actsByLevel", " ", "function"}], " ", "*)"}], 
      "\[IndentingNewLine]", 
      RowBox[{"(*", " ", 
       RowBox[{
        RowBox[{
         RowBox[{"If", " ", "histo"}], " ", "\[Equal]", " ", "1"}], ",", " ", 
        
        RowBox[{
        "a", " ", "histogram", " ", "of", " ", "activity", " ", "counts", " ",
          "at", " ", "each", " ", "level", " ", "is", " ", "shown"}]}], " ", 
       "*)"}], "\[IndentingNewLine]", 
      RowBox[{
       RowBox[{"in", " ", "=", " ", 
        RowBox[{
         RowBox[{
          RowBox[{"{", 
           RowBox[{
            RowBox[{"Mean", "[", "#", "]"}], ",", 
            RowBox[{"MeanCI", "[", "#", "]"}], ",", " ", 
            RowBox[{"StandardDeviation", "[", "#", "]"}], ",", " ", 
            RowBox[{"Quartiles", "[", "#", "]"}], ",", 
            RowBox[{"InterquartileRange", "[", "#", "]"}], ",", " ", 
            RowBox[{"N", "[", 
             RowBox[{
              RowBox[{"Mean", "[", "#", "]"}], " ", "-", " ", 
              RowBox[{"2", "*", " ", 
               RowBox[{"StandardDeviation", "[", "#", "]"}]}]}], "]"}], ",", 
            RowBox[{"N", "[", 
             RowBox[{
              RowBox[{"Mean", "[", "#", "]"}], " ", "+", " ", 
              RowBox[{"2", "*", " ", 
               RowBox[{"StandardDeviation", "[", "#", "]"}]}]}], "]"}], ",", 
            " ", 
            RowBox[{"Min", "[", "#", "]"}], ",", 
            RowBox[{"Max", "[", "#", "]"}]}], "}"}], " ", "&"}], " ", "/@", 
         " ", "levelsData"}]}], ";", "\[IndentingNewLine]", 
       RowBox[{"rowHeadings", " ", "=", " ", 
        RowBox[{"Table", "[", 
         RowBox[{
          RowBox[{"Prepend", "[", 
           RowBox[{
            RowBox[{"in", "[", 
             RowBox[{"[", "i", "]"}], "]"}], ",", " ", 
            RowBox[{"\"\<Level \>\"", " ", "<>", " ", 
             RowBox[{"ToString", "[", "i", "]"}], " ", "<>", " ", 
             "\"\< Activities\>\""}]}], "]"}], ",", " ", 
          RowBox[{"{", 
           RowBox[{"i", ",", " ", "1", ",", " ", 
            RowBox[{"Length", "[", "in", "]"}]}], "}"}]}], "]"}]}], ";", 
       "\[IndentingNewLine]", 
       RowBox[{"colHeadings", " ", "=", " ", 
        RowBox[{"{", 
         RowBox[{
         "\"\< \>\"", " ", ",", " ", "\"\<Mean\>\"", ",", " ", 
          "\"\<Mean CI\>\"", ",", " ", "\"\<Std Dev\>\"", ",", " ", 
          "\"\<Quartiles\>\"", ",", " ", "\"\<Interquartile Range\>\"", ",", 
          " ", "\"\<Mean Minus 2 Sigma\>\"", ",", " ", 
          "\"\<Mean Plus 2 Sigma\>\"", ",", " ", "\"\<Min\>\"", ",", " ", 
          "\"\<Max\>\""}], "}"}]}], ";", "\[IndentingNewLine]", 
       RowBox[{"out", " ", "=", " ", 
        RowBox[{"Grid", "[", 
         RowBox[{
          RowBox[{"Prepend", "[", 
           RowBox[{"rowHeadings", ",", " ", "colHeadings"}], "]"}], ",", " ", 
          
          RowBox[{"Frame", "\[Rule]", "All"}]}], "]"}]}], ";", 
       "\[IndentingNewLine]", 
       RowBox[{"hist", " ", "=", " ", 
        RowBox[{
         RowBox[{
          RowBox[{"Histogram", "[", "#", "]"}], " ", "&"}], " ", "/@", " ", 
         "levelsData"}]}], ";", "\[IndentingNewLine]", 
       RowBox[{"If", "[", 
        RowBox[{
         RowBox[{"histo", " ", "\[Equal]", " ", "1"}], ",", " ", "hist", ",", 
         " ", "out"}], "]"}]}]}], "\[IndentingNewLine]", "]"}]}], 
   ";"}]}]], "Input",
 CellChangeTimes->{{3.5690140043263707`*^9, 3.569014028669763*^9}, {
   3.5690141006898823`*^9, 3.5690141112134843`*^9}, {3.5690142083210382`*^9, 
   3.569014221261779*^9}, {3.569014272946735*^9, 3.5690142843853893`*^9}, 
   3.569014360785759*^9, {3.569014582121419*^9, 3.569014666986273*^9}, {
   3.5690148191439753`*^9, 3.5690148199020185`*^9}, {3.569014882108577*^9, 
   3.569014886340819*^9}, {3.56901493530962*^9, 3.5690150130060635`*^9}, {
   3.569015055498494*^9, 3.5690151570863047`*^9}, {3.5690152042370014`*^9, 
   3.569015215819664*^9}, {3.5690152565829954`*^9, 3.569015257850068*^9}, {
   3.569015288182803*^9, 3.569015292432046*^9}, {3.569072100834511*^9, 
   3.569072128901116*^9}, {3.5690756605131125`*^9, 3.5690757085878625`*^9}, {
   3.5690758781675615`*^9, 3.569075908046271*^9}, {3.569076027491102*^9, 
   3.569076065807294*^9}, {3.5690771071758566`*^9, 3.5690771164893894`*^9}, {
   3.569077244987739*^9, 3.569077297607749*^9}, {3.5690773639635444`*^9, 
   3.569077369400855*^9}, {3.569077457738908*^9, 3.5690774588119698`*^9}, {
   3.5690782181404004`*^9, 3.5690782207845516`*^9}, {3.569078909487943*^9, 
   3.569078920182555*^9}, {3.5690789824821186`*^9, 3.56907899999912*^9}, {
   3.569079050798026*^9, 3.5690791016209326`*^9}, {3.5690791443873787`*^9, 
   3.5690791560020432`*^9}, {3.569079347078972*^9, 3.5690793481530333`*^9}, 
   3.5690799482213554`*^9, 3.569080092087584*^9, {3.5732968328996973`*^9, 
   3.5732968397520885`*^9}, {3.5732968748710976`*^9, 3.57329687718423*^9}}],

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", " ", 
   RowBox[{
    RowBox[{
    "Now", " ", "we", " ", "can", " ", "calculate", " ", "the", " ", "stats", 
     " ", "for", " ", "total", " ", "complexity"}], "-", 
    RowBox[{
    "weighted", " ", "activity", " ", "counts", " ", "across", " ", "all", 
     " ", "the", " ", "trials", " ", "and", " ", "display", " ", "them"}]}], 
   " ", "*)"}], "\[IndentingNewLine]", 
  RowBox[{
   RowBox[{
    RowBox[{"dStatsTotals", "[", 
     RowBox[{"levelsData_", ",", " ", 
      RowBox[{"histo_:", "0"}]}], "]"}], ":=", " ", 
    RowBox[{"Module", "[", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{
       "in", ",", " ", "totals", ",", " ", "rowHeadings", ",", " ", 
        "colHeadings", ",", " ", "out"}], "}"}], ",", "\[IndentingNewLine]", 
      RowBox[{"(*", " ", 
       RowBox[{
       "levelsData", " ", "is", " ", "the", " ", "output", " ", "of", " ", 
        "the", " ", "actsByLevel", " ", "function"}], " ", "*)"}], 
      "\[IndentingNewLine]", 
      RowBox[{"(*", " ", 
       RowBox[{
       "Add", " ", "up", " ", "the", " ", "total", " ", "activiites", " ", 
        "across", " ", "all", " ", "levels", " ", "in", " ", "each", " ", 
        "trial"}], " ", "*)"}], "\[IndentingNewLine]", 
      RowBox[{
       RowBox[{"totals", " ", "=", " ", 
        RowBox[{"totalsByTrial", "[", "levelsData", "]"}]}], ";", 
       "\[IndentingNewLine]", 
       RowBox[{"in", " ", "=", " ", 
        RowBox[{"{", 
         RowBox[{
          RowBox[{"Mean", "[", "totals", "]"}], ",", 
          RowBox[{"MeanCI", "[", "totals", "]"}], ",", " ", 
          RowBox[{"StandardDeviation", "[", "totals", "]"}], ",", " ", 
          RowBox[{"Quartiles", "[", "totals", "]"}], ",", 
          RowBox[{"InterquartileRange", "[", "totals", "]"}], ",", " ", 
          RowBox[{"N", "[", 
           RowBox[{
            RowBox[{"Mean", "[", "totals", "]"}], " ", "-", " ", 
            RowBox[{"2", "*", " ", 
             RowBox[{"StandardDeviation", "[", "totals", "]"}]}]}], "]"}], 
          ",", 
          RowBox[{"N", "[", 
           RowBox[{
            RowBox[{"Mean", "[", "totals", "]"}], " ", "+", " ", 
            RowBox[{"2", "*", " ", 
             RowBox[{"StandardDeviation", "[", "totals", "]"}]}]}], "]"}], 
          ",", " ", 
          RowBox[{"Min", "[", "totals", "]"}], ",", 
          RowBox[{"Max", "[", "totals", "]"}]}], "}"}]}], ";", 
       "\[IndentingNewLine]", 
       RowBox[{"rowHeadings", " ", "=", " ", 
        RowBox[{"Prepend", "[", 
         RowBox[{"in", ",", " ", "\"\<Total Activity Count\>\""}], "]"}]}], 
       ";", "\[IndentingNewLine]", 
       RowBox[{"colHeadings", " ", "=", " ", 
        RowBox[{"{", 
         RowBox[{
         "\"\< \>\"", " ", ",", " ", "\"\<Mean\>\"", ",", " ", 
          "\"\<Mean CI\>\"", ",", " ", "\"\<Std Dev\>\"", ",", " ", 
          "\"\<Quartiles\>\"", ",", " ", "\"\<Interquartile Range\>\"", ",", 
          " ", "\"\<Mean Minus 2 Sigma\>\"", ",", " ", 
          "\"\<Mean Plus 2 Sigma\>\"", ",", " ", "\"\<Min\>\"", ",", " ", 
          "\"\<Max\>\""}], "}"}]}], ";", "\[IndentingNewLine]", 
       RowBox[{"out", " ", "=", " ", 
        RowBox[{"Grid", "[", 
         RowBox[{
          RowBox[{"{", 
           RowBox[{"colHeadings", ",", " ", "rowHeadings"}], "}"}], ",", " ", 
          
          RowBox[{"Frame", "\[Rule]", "All"}]}], "]"}]}], ";", 
       "\[IndentingNewLine]", 
       RowBox[{"If", "[", 
        RowBox[{
         RowBox[{"histo", " ", "\[Equal]", " ", "1"}], ",", " ", 
         RowBox[{"Histogram", "[", "totals", "]"}], ",", " ", "out"}], 
        "]"}]}]}], "\[IndentingNewLine]", "]"}]}], ";"}]}]], "Input",
 CellChangeTimes->{{3.5690140043263707`*^9, 3.569014028669763*^9}, {
   3.5690141006898823`*^9, 3.5690141112134843`*^9}, {3.5690142083210382`*^9, 
   3.569014221261779*^9}, {3.569014272946735*^9, 3.5690142843853893`*^9}, 
   3.569014360785759*^9, {3.569014582121419*^9, 3.569014666986273*^9}, {
   3.5690148191439753`*^9, 3.5690148199020185`*^9}, {3.569014882108577*^9, 
   3.569014886340819*^9}, {3.56901493530962*^9, 3.5690150130060635`*^9}, {
   3.569015055498494*^9, 3.5690151570863047`*^9}, {3.5690152042370014`*^9, 
   3.569015215819664*^9}, {3.5690152565829954`*^9, 3.569015257850068*^9}, {
   3.569015288182803*^9, 3.569015292432046*^9}, {3.569072100834511*^9, 
   3.569072128901116*^9}, {3.5690756605131125`*^9, 3.5690757085878625`*^9}, {
   3.5690758781675615`*^9, 3.569075908046271*^9}, {3.569076027491102*^9, 
   3.569076065807294*^9}, {3.5690762624155397`*^9, 3.5690763875996995`*^9}, {
   3.5690764199615507`*^9, 3.5690764500312705`*^9}, {3.5690766219871054`*^9, 
   3.5690766518738155`*^9}, {3.5690767124322786`*^9, 3.569076733882506*^9}, {
   3.569076775555889*^9, 3.569076778158038*^9}, {3.5690768562405043`*^9, 
   3.5690768731954737`*^9}, {3.5690769094465475`*^9, 3.569076967679878*^9}, {
   3.569077048449498*^9, 3.569077056329949*^9}, {3.5690771201075964`*^9, 
   3.5690771601488867`*^9}, {3.5690783419234805`*^9, 3.569078510424118*^9}, {
   3.5690785652302527`*^9, 3.5690785856814227`*^9}, {3.569078748328726*^9, 
   3.5690787784284472`*^9}, {3.5690793394355345`*^9, 3.5690793404795947`*^9}}],

Cell["Light User Activity Counts (after normalizing for intensity)", "Text",
 CellChangeTimes->{{3.603665833782167*^9, 3.603665908242449*^9}}],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", " ", 
   RowBox[{
   "Total", " ", "activity", " ", "counts", " ", "across", " ", "all", " ", 
    RowBox[{"levels", " ", "--"}], " ", "COMPLEXITY", " ", "WEIGHTED"}], " ", 
   "*)"}], "\[IndentingNewLine]", 
  RowBox[{"dStatsTotals", "[", 
   RowBox[{
    RowBox[{"actsByLevel", "[", 
     RowBox[{"nRangeLight", ",", " ", "dLight", ",", " ", "1"}], "]"}], ",", 
    "1"}], "]"}]}]], "Input",
 CellChangeTimes->{{3.5690765447956905`*^9, 3.569076553600194*^9}, {
   3.569077176407817*^9, 3.5690771774168744`*^9}, {3.56907727192628*^9, 
   3.5690772741544075`*^9}, {3.5690774261341004`*^9, 
   3.5690774352246203`*^9}, {3.5690781092041693`*^9, 3.5690781098152046`*^9}, 
   3.5690781431811132`*^9, {3.569078188690716*^9, 3.5690781894617605`*^9}, {
   3.569078621713484*^9, 3.5690786257727156`*^9}, {3.569078662537819*^9, 
   3.569078713770749*^9}, {3.5690789338873386`*^9, 3.569078942322821*^9}, {
   3.5690799072710133`*^9, 3.5690799792901325`*^9}, {3.569080226953298*^9, 
   3.569080253180798*^9}, {3.569081083275277*^9, 3.569081101328309*^9}, {
   3.569081137690389*^9, 3.5690811474199457`*^9}, {3.569081294149338*^9, 
   3.5690813213728952`*^9}, {3.5690817619370937`*^9, 3.5690817681354485`*^9}}],

Cell[BoxData[
 GraphicsBox[{
   {RGBColor[0.987148, 0.8073604000000001, 0.49470040000000004`], EdgeForm[{
    Opacity[0.567], Thickness[Small]}], {}, 
    {RGBColor[0.987148, 0.8073604000000001, 0.49470040000000004`], EdgeForm[{
     Opacity[0.567], Thickness[Small]}], 
     TagBox[
      TooltipBox[
       TagBox[
        DynamicBox[{
          FEPrivate`If[
           CurrentValue["MouseOver"], 
           EdgeForm[{
             GrayLevel[0.5], 
             AbsoluteThickness[1.5], 
             Opacity[0.66]}], {}, {}], 
          RectangleBox[{96000., 0}, {96500., 2}, "RoundingRadius" -> 0]},
         ImageSizeCache->{{26.254403522818393`, 43.871254898655934`}, {
          90.87743552045794, 91.93456273819324}}],
        StatusArea[#, 2]& ,
        TagBoxNote->"2"],
       StyleBox["2", {}, StripOnInput -> False]],
      Annotation[#, 
       Style[2, {}], "Tooltip"]& ], 
     TagBox[
      TooltipBox[
       TagBox[
        DynamicBox[{
          FEPrivate`If[
           CurrentValue["MouseOver"], 
           EdgeForm[{
             GrayLevel[0.5], 
             AbsoluteThickness[1.5], 
             Opacity[0.66]}], {}, {}], 
          RectangleBox[{96500., 0}, {97000., 9}, "RoundingRadius" -> 0]},
         ImageSizeCache->{{43.371254898655934`, 60.98810627449302}, {
          88.92749025838435, 91.93456273819324}}],
        StatusArea[#, 9]& ,
        TagBoxNote->"9"],
       StyleBox["9", {}, StripOnInput -> False]],
      Annotation[#, 
       Style[9, {}], "Tooltip"]& ], 
     TagBox[
      TooltipBox[
       TagBox[
        DynamicBox[{
          FEPrivate`If[
           CurrentValue["MouseOver"], 
           EdgeForm[{
             GrayLevel[0.5], 
             AbsoluteThickness[1.5], 
             Opacity[0.66]}], {}, {}], 
          RectangleBox[{97000., 0}, {97500., 14}, "RoundingRadius" -> 0]},
         ImageSizeCache->{{60.48810627449302, 78.10495765033056}, {
          87.5346722140461, 91.93456273819324}}],
        StatusArea[#, 14]& ,
        TagBoxNote->"14"],
       StyleBox["14", {}, StripOnInput -> False]],
      Annotation[#, 
       Style[14, {}], "Tooltip"]& ], 
     TagBox[
      TooltipBox[
       TagBox[
        DynamicBox[{
          FEPrivate`If[
           CurrentValue["MouseOver"], 
           EdgeForm[{
             GrayLevel[0.5], 
             AbsoluteThickness[1.5], 
             Opacity[0.66]}], {}, {}], 
          RectangleBox[{97500., 0}, {98000., 56}, "RoundingRadius" -> 0]},
         ImageSizeCache->{{77.60495765033056, 95.2218090261681}, {
          75.83500064160467, 91.93456273819324}}],
        StatusArea[#, 56]& ,
        TagBoxNote->"56"],
       StyleBox["56", {}, StripOnInput -> False]],
      Annotation[#, 
       Style[56, {}], "Tooltip"]& ], 
     TagBox[
      TooltipBox[
       TagBox[
        DynamicBox[{
          FEPrivate`If[
           CurrentValue["MouseOver"], 
           EdgeForm[{
             GrayLevel[0.5], 
             AbsoluteThickness[1.5], 
             Opacity[0.66]}], {}, {}], 
          RectangleBox[{98000., 0}, {98500., 122}, "RoundingRadius" -> 0]},
         ImageSizeCache->{{94.7218090261681, 112.33866040200564`}, {
          57.44980245633957, 91.93456273819324}}],
        StatusArea[#, 122]& ,
        TagBoxNote->"122"],
       StyleBox["122", {}, StripOnInput -> False]],
      Annotation[#, 
       Style[122, {}], "Tooltip"]& ], 
     TagBox[
      TooltipBox[
       TagBox[
        DynamicBox[{
          FEPrivate`If[
           CurrentValue["MouseOver"], 
           EdgeForm[{
             GrayLevel[0.5], 
             AbsoluteThickness[1.5], 
             Opacity[0.66]}], {}, {}], 
          RectangleBox[{98500., 0}, {99000., 172}, "RoundingRadius" -> 0]},
         ImageSizeCache->{{111.83866040200564`, 129.45551177784318`}, {
          43.52162201295692, 91.93456273819324}}],
        StatusArea[#, 172]& ,
        TagBoxNote->"172"],
       StyleBox["172", {}, StripOnInput -> False]],
      Annotation[#, 
       Style[172, {}], "Tooltip"]& ], 
     TagBox[
      TooltipBox[
       TagBox[
        DynamicBox[{
          FEPrivate`If[
           CurrentValue["MouseOver"], 
           EdgeForm[{
             GrayLevel[0.5], 
             AbsoluteThickness[1.5], 
             Opacity[0.66]}], {}, {}], 
          RectangleBox[{99000., 0}, {99500., 359}, "RoundingRadius" -> 0]},
         ImageSizeCache->{{128.95551177784318`, 
          146.57236315368073`}, {-8.569772845294196, 91.93456273819324}}],
        StatusArea[#, 359]& ,
        TagBoxNote->"359"],
       StyleBox["359", {}, StripOnInput -> False]],
      Annotation[#, 
       Style[359, {}], "Tooltip"]& ], 
     TagBox[
      TooltipBox[
       TagBox[
        DynamicBox[{
          FEPrivate`If[
           CurrentValue["MouseOver"], 
           EdgeForm[{
             GrayLevel[0.5], 
             AbsoluteThickness[1.5], 
             Opacity[0.66]}], {}, {}], 
          RectangleBox[{99500., 0}, {100000., 458}, "RoundingRadius" -> 0]},
         ImageSizeCache->{{146.07236315368073`, 
          163.68921452951827`}, {-36.14757012319187, 91.93456273819324}}],
        StatusArea[#, 458]& ,
        TagBoxNote->"458"],
       StyleBox["458", {}, StripOnInput -> False]],
      Annotation[#, 
       Style[458, {}], "Tooltip"]& ], 
     TagBox[
      TooltipBox[
       TagBox[
        DynamicBox[{
          FEPrivate`If[
           CurrentValue["MouseOver"], 
           EdgeForm[{
             GrayLevel[0.5], 
             AbsoluteThickness[1.5], 
             Opacity[0.66]}], {}, {}], 
          RectangleBox[{100000., 0}, {100500., 631}, "RoundingRadius" -> 0]},
         ImageSizeCache->{{163.18921452951827`, 
          180.8060659053558}, {-84.33907445729581, 91.93456273819324}}],
        StatusArea[#, 631]& ,
        TagBoxNote->"631"],
       StyleBox["631", {}, StripOnInput -> False]],
      Annotation[#, 
       Style[631, {}], "Tooltip"]& ], 
     TagBox[
      TooltipBox[
       TagBox[
        DynamicBox[{
          FEPrivate`If[
           CurrentValue["MouseOver"], 
           EdgeForm[{
             GrayLevel[0.5], 
             AbsoluteThickness[1.5], 
             Opacity[0.66]}], {}, {}], 
          RectangleBox[{100500., 0}, {101000., 663}, "RoundingRadius" -> 0]},
         ImageSizeCache->{{180.3060659053558, 
          197.92291728119335`}, {-93.25310994106071, 91.93456273819324}}],
        StatusArea[#, 663]& ,
        TagBoxNote->"663"],
       StyleBox["663", {}, StripOnInput -> False]],
      Annotation[#, 
       Style[663, {}], "Tooltip"]& ], 
     TagBox[
      TooltipBox[
       TagBox[
        DynamicBox[{
          FEPrivate`If[
           CurrentValue["MouseOver"], 
           EdgeForm[{
             GrayLevel[0.5], 
             AbsoluteThickness[1.5], 
             Opacity[0.66]}], {}, {}], 
          RectangleBox[{101000., 0}, {101500., 699}, "RoundingRadius" -> 0]},
         ImageSizeCache->{{197.42291728119335`, 
          215.0397686570309}, {-103.28139986029622`, 91.93456273819324}}],
        StatusArea[#, 699]& ,
        TagBoxNote->"699"],
       StyleBox["699", {}, StripOnInput -> False]],
      Annotation[#, 
       Style[699, {}], "Tooltip"]& ], 
     TagBox[
      TooltipBox[
       TagBox[
        DynamicBox[{
          FEPrivate`If[
           CurrentValue["MouseOver"], 
           EdgeForm[{
             GrayLevel[0.5], 
             AbsoluteThickness[1.5], 
             Opacity[0.66]}], {}, {}], 
          RectangleBox[{101500., 0}, {102000., 601}, "RoundingRadius" -> 0]},
         ImageSizeCache->{{214.5397686570309, 
          232.15662003286843`}, {-75.98216619126624, 91.93456273819324}}],
        StatusArea[#, 601]& ,
        TagBoxNote->"601"],
       StyleBox["601", {}, StripOnInput -> False]],
      Annotation[#, 
       Style[601, {}], "Tooltip"]& ], 
     TagBox[
      TooltipBox[
       TagBox[
        DynamicBox[{
          FEPrivate`If[
           CurrentValue["MouseOver"], 
           EdgeForm[{
             GrayLevel[0.5], 
             AbsoluteThickness[1.5], 
             Opacity[0.66]}], {}, {}], 
          RectangleBox[{102000., 0}, {102500., 466}, "RoundingRadius" -> 0]},
         ImageSizeCache->{{231.65662003286843`, 
          249.27347140870597`}, {-38.37607899413307, 91.93456273819324}}],
        StatusArea[#, 466]& ,
        TagBoxNote->"466"],
       StyleBox["466", {}, StripOnInput -> False]],
      Annotation[#, 
       Style[466, {}], "Tooltip"]& ], 
     TagBox[
      TooltipBox[
       TagBox[
        DynamicBox[{
          FEPrivate`If[
           CurrentValue["MouseOver"], 
           EdgeForm[{
             GrayLevel[0.5], 
             AbsoluteThickness[1.5], 
             Opacity[0.66]}], {}, {}], 
          RectangleBox[{102500., 0}, {103000., 322}, "RoundingRadius" -> 0]},
         ImageSizeCache->{{248.77347140870597`, 266.39032278454306`}, {
          1.7370806828089655`, 91.93456273819324}}],
        StatusArea[#, 322]& ,
        TagBoxNote->"322"],
       StyleBox["322", {}, StripOnInput -> False]],
      Annotation[#, 
       Style[322, {}], "Tooltip"]& ], 
     TagBox[
      TooltipBox[
       TagBox[
        DynamicBox[{
          FEPrivate`If[
           CurrentValue["MouseOver"], 
           EdgeForm[{
             GrayLevel[0.5], 
             AbsoluteThickness[1.5], 
             Opacity[0.66]}], {}, {}], 
          RectangleBox[{103000., 0}, {103500., 219}, "RoundingRadius" -> 0]},
         ImageSizeCache->{{265.89032278454306`, 283.5071741603806}, {
          30.429132396177224`, 91.93456273819324}}],
        StatusArea[#, 219]& ,
        TagBoxNote->"219"],
       StyleBox["219", {}, StripOnInput -> False]],
      Annotation[#, 
       Style[219, {}], "Tooltip"]& ], 
     TagBox[
      TooltipBox[
       TagBox[
        DynamicBox[{
          FEPrivate`If[
           CurrentValue["MouseOver"], 
           EdgeForm[{
             GrayLevel[0.5], 
             AbsoluteThickness[1.5], 
             Opacity[0.66]}], {}, {}], 
          RectangleBox[{103500., 0}, {104000., 113}, "RoundingRadius" -> 0]},
         ImageSizeCache->{{283.0071741603806, 300.62402553621814`}, {
          59.956874936148445`, 91.93456273819324}}],
        StatusArea[#, 113]& ,
        TagBoxNote->"113"],
       StyleBox["113", {}, StripOnInput -> False]],
      Annotation[#, 
       Style[113, {}], "Tooltip"]& ], 
     TagBox[
      TooltipBox[
       TagBox[
        DynamicBox[{
          FEPrivate`If[
           CurrentValue["MouseOver"], 
           EdgeForm[{
             GrayLevel[0.5], 
             AbsoluteThickness[1.5], 
             Opacity[0.66]}], {}, {}], 
          RectangleBox[{104000., 0}, {104500., 60}, "RoundingRadius" -> 0]},
         ImageSizeCache->{{300.12402553621814`, 317.7408769120557}, {
          74.72074620613405, 91.93456273819324}}],
        StatusArea[#, 60]& ,
        TagBoxNote->"60"],
       StyleBox["60", {}, StripOnInput -> False]],
      Annotation[#, 
       Style[60, {}], "Tooltip"]& ], 
     TagBox[
      TooltipBox[
       TagBox[
        DynamicBox[{
          FEPrivate`If[
           CurrentValue["MouseOver"], 
           EdgeForm[{
             GrayLevel[0.5], 
             AbsoluteThickness[1.5], 
             Opacity[0.66]}], {}, {}], 
          RectangleBox[{104500., 0}, {105000., 22}, "RoundingRadius" -> 0]},
         ImageSizeCache->{{317.2408769120557, 334.8577282878932}, {
          85.30616334310487, 91.93456273819324}}],
        StatusArea[#, 22]& ,
        TagBoxNote->"22"],
       StyleBox["22", {}, StripOnInput -> False]],
      Annotation[#, 
       Style[22, {}], "Tooltip"]& ], 
     TagBox[
      TooltipBox[
       TagBox[
        DynamicBox[{
          FEPrivate`If[
           CurrentValue["MouseOver"], 
           EdgeForm[{
             GrayLevel[0.5], 
             AbsoluteThickness[1.5], 
             Opacity[0.66]}], {}, {}], 
          RectangleBox[{105000., 0}, {105500., 12}, "RoundingRadius" -> 0]},
         ImageSizeCache->{{334.3577282878932, 351.97457966373076`}, {
          88.0917994317814, 91.93456273819324}}],
        StatusArea[#, 12]& ,
        TagBoxNote->"12"],
       StyleBox["12", {}, StripOnInput -> False]],
      Annotation[#, 
       Style[12, {}], 
       "Tooltip"]& ]}, {}, {}}, {{}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, \
{}, {}, {}, {}, {}, {}, {}, {}}},
  AspectRatio->NCache[GoldenRatio^(-1), 0.6180339887498948],
  Axes->{True, True},
  AxesLabel->{None, None},
  AxesOrigin->{95810., 0},
  FrameLabel->{{None, None}, {None, None}},
  FrameTicks->{{Automatic, Automatic}, {Automatic, Automatic}},
  GridLines->{None, None},
  GridLinesStyle->Directive[
    GrayLevel[0.5, 0.4]],
  PlotRange->{{96000., 105500.}, {All, All}},
  PlotRangePadding->{{
     Scaled[0.02], 
     Scaled[0.02]}, {
     Scaled[0.02], 
     Scaled[0.05]}},
  Ticks->{Automatic, Automatic}]], "Output",
 CellChangeTimes->{
  3.5690765572724047`*^9, {3.5690766351528587`*^9, 3.5690766579251614`*^9}, 
   3.569076737870734*^9, 3.5690767825662904`*^9, 3.5690768790048065`*^9, {
   3.5690769267405367`*^9, 3.5690769718001137`*^9}, 3.569077065004445*^9, 
   3.56907718153611*^9, 3.569077280549773*^9, 3.5690773117055554`*^9, {
   3.569077382632612*^9, 3.569077404496863*^9}, 3.5690774392018476`*^9, {
   3.5690781166275945`*^9, 3.5690781445681925`*^9}, 3.569078190821838*^9, {
   3.569078226734892*^9, 3.569078233481278*^9}, 3.5690785234568634`*^9, {
   3.56907859193478*^9, 3.56907862671577*^9}, {3.5690786788447514`*^9, 
   3.569078715220832*^9}, 3.569078756385186*^9, 3.5690787891000576`*^9, 
   3.5690788496625214`*^9, 3.5690789490782075`*^9, 3.5690790072355337`*^9, 
   3.5690795074371443`*^9, 3.5690795448302827`*^9, 3.5690798775713143`*^9, {
   3.569079910490197*^9, 3.569079981104236*^9}, {3.5690802367638593`*^9, 
   3.56908025443287*^9}, 3.569081441593772*^9, 3.569081769748541*^9, 
   3.569093154608718*^9, 3.569093639696463*^9, 3.569162547111249*^9, 
   3.5691667198529167`*^9, 3.5691675507724423`*^9, 3.569167944791979*^9, 
   3.569288605149082*^9, 3.5692896210708675`*^9, 3.5697801647887774`*^9, 
   3.573296321357438*^9, 3.573296918478592*^9, 3.6035661122419367`*^9, 
   3.603665803148106*^9, 3.60367198921141*^9, 3.603703717091021*^9, 
   3.6178115986888943`*^9, 3.617815493123683*^9}]
}, {2}]],

Cell["\<\
Standard User Activity Counts (after normalizing for intensity)\
\>", "Text",
 CellChangeTimes->{{3.603665833782167*^9, 3.603665930376474*^9}, {
  3.60366601007935*^9, 3.603666014269451*^9}}],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", " ", 
   RowBox[{
   "Total", " ", "activity", " ", "counts", " ", "across", " ", "all", " ", 
    RowBox[{"levels", " ", "--"}], " ", "COMPLEXITY", " ", "WEIGHTED"}], " ", 
   "*)"}], "\[IndentingNewLine]", 
  RowBox[{"dStatsTotals", "[", 
   RowBox[{
    RowBox[{"actsByLevel", "[", 
     RowBox[{"nRangeStd", ",", " ", "dStd", ",", " ", "1"}], "]"}], ",", 
    "1"}], "]"}]}]], "Input",
 CellChangeTimes->{{3.5690765447956905`*^9, 3.569076553600194*^9}, {
   3.569077176407817*^9, 3.5690771774168744`*^9}, {3.56907727192628*^9, 
   3.5690772741544075`*^9}, {3.5690774261341004`*^9, 
   3.5690774352246203`*^9}, {3.5690781092041693`*^9, 3.5690781098152046`*^9}, 
   3.5690781431811132`*^9, {3.569078188690716*^9, 3.5690781894617605`*^9}, {
   3.569078621713484*^9, 3.5690786257727156`*^9}, {3.569078662537819*^9, 
   3.569078713770749*^9}, {3.5690789338873386`*^9, 3.569078942322821*^9}, {
   3.5690799072710133`*^9, 3.5690799792901325`*^9}, {3.569080226953298*^9, 
   3.569080253180798*^9}, {3.569081083275277*^9, 3.569081101328309*^9}, {
   3.569081137690389*^9, 3.5690811474199457`*^9}, {3.569081294149338*^9, 
   3.5690813213728952`*^9}}],

Cell[BoxData[
 GraphicsBox[{
   {RGBColor[0.987148, 0.8073604000000001, 0.49470040000000004`], EdgeForm[{
    Opacity[0.616], Thickness[Small]}], {}, 
    {RGBColor[0.987148, 0.8073604000000001, 0.49470040000000004`], EdgeForm[{
     Opacity[0.616], Thickness[Small]}], 
     TagBox[
      TooltipBox[
       TagBox[
        DynamicBox[{
          FEPrivate`If[
           CurrentValue["MouseOver"], 
           EdgeForm[{
             GrayLevel[0.5], 
             AbsoluteThickness[1.5], 
             Opacity[0.66]}], {}, {}], 
          RectangleBox[{297000., 0}, {298000., 4}, "RoundingRadius" -> 0]},
         ImageSizeCache->{{31.15832666132974, 58.359687750201374`}, {
          89.81665662962321, 90.90377156037646}}],
        StatusArea[#, 4]& ,
        TagBoxNote->"4"],
       StyleBox["4", {}, StripOnInput -> False]],
      Annotation[#, 
       Style[4, {}], "Tooltip"]& ], 
     TagBox[
      TooltipBox[
       TagBox[
        DynamicBox[{
          FEPrivate`If[
           CurrentValue["MouseOver"], 
           EdgeForm[{
             GrayLevel[0.5], 
             AbsoluteThickness[1.5], 
             Opacity[0.66]}], {}, {}], 
          RectangleBox[{298000., 0}, {299000., 9}, "RoundingRadius" -> 0]},
         ImageSizeCache->{{57.859687750201374`, 85.0610488390721}, {
          89.08276296618166, 90.90377156037646}}],
        StatusArea[#, 9]& ,
        TagBoxNote->"9"],
       StyleBox["9", {}, StripOnInput -> False]],
      Annotation[#, 
       Style[9, {}], "Tooltip"]& ], 
     TagBox[
      TooltipBox[
       TagBox[
        DynamicBox[{
          FEPrivate`If[
           CurrentValue["MouseOver"], 
           EdgeForm[{
             GrayLevel[0.5], 
             AbsoluteThickness[1.5], 
             Opacity[0.66]}], {}, {}], 
          RectangleBox[{299000., 0}, {300000., 80}, "RoundingRadius" -> 0]},
         ImageSizeCache->{{84.5610488390721, 111.76240992794374`}, {
          78.66147294531157, 90.90377156037646}}],
        StatusArea[#, 80]& ,
        TagBoxNote->"80"],
       StyleBox["80", {}, StripOnInput -> False]],
      Annotation[#, 
       Style[80, {}], "Tooltip"]& ], 
     TagBox[
      TooltipBox[
       TagBox[
        DynamicBox[{
          FEPrivate`If[
           CurrentValue["MouseOver"], 
           EdgeForm[{
             GrayLevel[0.5], 
             AbsoluteThickness[1.5], 
             Opacity[0.66]}], {}, {}], 
          RectangleBox[{300000., 0}, {301000., 347}, "RoundingRadius" -> 0]},
         ImageSizeCache->{{111.26240992794374`, 138.46377101681446`}, {
          39.471551317532516`, 90.90377156037646}}],
        StatusArea[#, 347]& ,
        TagBoxNote->"347"],
       StyleBox["347", {}, StripOnInput -> False]],
      Annotation[#, 
       Style[347, {}], "Tooltip"]& ], 
     TagBox[
      TooltipBox[
       TagBox[
        DynamicBox[{
          FEPrivate`If[
           CurrentValue["MouseOver"], 
           EdgeForm[{
             GrayLevel[0.5], 
             AbsoluteThickness[1.5], 
             Opacity[0.66]}], {}, {}], 
          RectangleBox[{301000., 0}, {302000., 851}, "RoundingRadius" -> 0]},
         ImageSizeCache->{{137.96377101681446`, 
          165.1651321056852}, {-34.50492995737626, 90.90377156037646}}],
        StatusArea[#, 851]& ,
        TagBoxNote->"851"],
       StyleBox["851", {}, StripOnInput -> False]],
      Annotation[#, 
       Style[851, {}], "Tooltip"]& ], 
     TagBox[
      TooltipBox[
       TagBox[
        DynamicBox[{
          FEPrivate`If[
           CurrentValue["MouseOver"], 
           EdgeForm[{
             GrayLevel[0.5], 
             AbsoluteThickness[1.5], 
             Opacity[0.66]}], {}, {}], 
          RectangleBox[{302000., 0}, {303000., 1307}, "RoundingRadius" -> 0]},
         
         ImageSizeCache->{{164.6651321056852, 
          191.86649319455682`}, {-101.43603206324612`, 90.90377156037646}}],
        StatusArea[#, 1307]& ,
        TagBoxNote->"1307"],
       StyleBox["1307", {}, StripOnInput -> False]],
      Annotation[#, 
       Style[1307, {}], "Tooltip"]& ], 
     TagBox[
      TooltipBox[
       TagBox[
        DynamicBox[{
          FEPrivate`If[
           CurrentValue["MouseOver"], 
           EdgeForm[{
             GrayLevel[0.5], 
             AbsoluteThickness[1.5], 
             Opacity[0.66]}], {}, {}], 
          RectangleBox[{303000., 0}, {304000., 1259}, "RoundingRadius" -> 0]},
         
         ImageSizeCache->{{191.36649319455682`, 
          218.56785428342755`}, {-94.39065289420718, 90.90377156037646}}],
        StatusArea[#, 1259]& ,
        TagBoxNote->"1259"],
       StyleBox["1259", {}, StripOnInput -> False]],
      Annotation[#, 
       Style[1259, {}], "Tooltip"]& ], 
     TagBox[
      TooltipBox[
       TagBox[
        DynamicBox[{
          FEPrivate`If[
           CurrentValue["MouseOver"], 
           EdgeForm[{
             GrayLevel[0.5], 
             AbsoluteThickness[1.5], 
             Opacity[0.66]}], {}, {}], 
          RectangleBox[{304000., 0}, {305000., 751}, "RoundingRadius" -> 0]},
         ImageSizeCache->{{218.06785428342755`, 
          245.2692153722992}, {-19.827056688545156`, 90.90377156037646}}],
        StatusArea[#, 751]& ,
        TagBoxNote->"751"],
       StyleBox["751", {}, StripOnInput -> False]],
      Annotation[#, 
       Style[751, {}], "Tooltip"]& ], 
     TagBox[
      TooltipBox[
       TagBox[
        DynamicBox[{
          FEPrivate`If[
           CurrentValue["MouseOver"], 
           EdgeForm[{
             GrayLevel[0.5], 
             AbsoluteThickness[1.5], 
             Opacity[0.66]}], {}, {}], 
          RectangleBox[{305000., 0}, {306000., 313}, "RoundingRadius" -> 0]},
         ImageSizeCache->{{244.7692153722992, 271.9705764611699}, {
          44.46202822893509, 90.90377156037646}}],
        StatusArea[#, 313]& ,
        TagBoxNote->"313"],
       StyleBox["313", {}, StripOnInput -> False]],
      Annotation[#, 
       Style[313, {}], "Tooltip"]& ], 
     TagBox[
      TooltipBox[
       TagBox[
        DynamicBox[{
          FEPrivate`If[
           CurrentValue["MouseOver"], 
           EdgeForm[{
             GrayLevel[0.5], 
             AbsoluteThickness[1.5], 
             Opacity[0.66]}], {}, {}], 
          RectangleBox[{306000., 0}, {307000., 67}, "RoundingRadius" -> 0]},
         ImageSizeCache->{{271.4705764611699, 298.67193755004064`}, {
          80.56959647025961, 90.90377156037646}}],
        StatusArea[#, 67]& ,
        TagBoxNote->"67"],
       StyleBox["67", {}, StripOnInput -> False]],
      Annotation[#, 
       Style[67, {}], "Tooltip"]& ], 
     TagBox[
      TooltipBox[
       TagBox[
        DynamicBox[{
          FEPrivate`If[
           CurrentValue["MouseOver"], 
           EdgeForm[{
             GrayLevel[0.5], 
             AbsoluteThickness[1.5], 
             Opacity[0.66]}], {}, {}], 
          RectangleBox[{307000., 0}, {308000., 10}, "RoundingRadius" -> 0]},
         ImageSizeCache->{{298.17193755004064`, 325.3732986389123}, {
          88.93598423349334, 90.90377156037646}}],
        StatusArea[#, 10]& ,
        TagBoxNote->"10"],
       StyleBox["10", {}, StripOnInput -> False]],
      Annotation[#, 
       Style[10, {}], "Tooltip"]& ], 
     TagBox[
      TooltipBox[
       TagBox[
        DynamicBox[{
          FEPrivate`If[
           CurrentValue["MouseOver"], 
           EdgeForm[{
             GrayLevel[0.5], 
             AbsoluteThickness[1.5], 
             Opacity[0.66]}], {}, {}], 
          RectangleBox[{308000., 0}, {309000., 2}, "RoundingRadius" -> 0]},
         ImageSizeCache->{{324.8732986389123, 352.0746597277839}, {
          90.11021409499983, 90.90377156037646}}],
        StatusArea[#, 2]& ,
        TagBoxNote->"2"],
       StyleBox["2", {}, StripOnInput -> False]],
      Annotation[#, 
       Style[2, {}], 
       "Tooltip"]& ]}, {}, {}}, {{}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, \
{}}},
  AspectRatio->NCache[GoldenRatio^(-1), 0.6180339887498948],
  Axes->{True, True},
  AxesLabel->{None, None},
  AxesOrigin->{296760., 0},
  FrameLabel->{{None, None}, {None, None}},
  FrameTicks->{{Automatic, Automatic}, {Automatic, Automatic}},
  GridLines->{None, None},
  GridLinesStyle->Directive[
    GrayLevel[0.5, 0.4]],
  PlotRange->{{297000., 309000.}, {All, All}},
  PlotRangePadding->{{
     Scaled[0.02], 
     Scaled[0.02]}, {
     Scaled[0.02], 
     Scaled[0.05]}},
  Ticks->{Automatic, Automatic}]], "Output",
 CellChangeTimes->{
  3.5690765572724047`*^9, {3.5690766351528587`*^9, 3.5690766579251614`*^9}, 
   3.569076737870734*^9, 3.5690767825662904`*^9, 3.5690768790048065`*^9, {
   3.5690769267405367`*^9, 3.5690769718001137`*^9}, 3.569077065004445*^9, 
   3.56907718153611*^9, 3.569077280549773*^9, 3.5690773117055554`*^9, {
   3.569077382632612*^9, 3.569077404496863*^9}, 3.5690774392018476`*^9, {
   3.5690781166275945`*^9, 3.5690781445681925`*^9}, 3.569078190821838*^9, {
   3.569078226734892*^9, 3.569078233481278*^9}, 3.5690785234568634`*^9, {
   3.56907859193478*^9, 3.56907862671577*^9}, {3.5690786788447514`*^9, 
   3.569078715220832*^9}, 3.569078756385186*^9, 3.5690787891000576`*^9, 
   3.5690788496625214`*^9, 3.5690789490782075`*^9, 3.5690790072355337`*^9, 
   3.5690795074371443`*^9, 3.5690795448302827`*^9, 3.5690798775713143`*^9, {
   3.569079910490197*^9, 3.569079981104236*^9}, {3.5690802367638593`*^9, 
   3.56908025443287*^9}, 3.569081441593772*^9, 3.569093160858075*^9, 
   3.5690936459188185`*^9, 3.569162554393666*^9, 3.569166726768312*^9, 
   3.5691675570037985`*^9, 3.5691679510473366`*^9, 3.5692886114514933`*^9, 
   3.5692896271392784`*^9, 3.569780171419157*^9, 3.573296327795807*^9, 
   3.573296925193976*^9, 3.603566114562292*^9, 3.6036660190197*^9, 
   3.603671989453453*^9, 3.603703717399819*^9, 3.617811599207101*^9, 
   3.6178154936447783`*^9}]
}, {2}]],

Cell["Heavy User Activity Counts (after normalizing for intensity)", "Text",
 CellChangeTimes->{{3.603665833782167*^9, 3.603665939672007*^9}}],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", " ", 
   RowBox[{
   "Total", " ", "activity", " ", "counts", " ", "across", " ", "all", " ", 
    RowBox[{"levels", " ", "--"}], " ", "COMPLEXITY", " ", "WEIGHTED"}], " ", 
   "*)"}], "\[IndentingNewLine]", 
  RowBox[{"dStatsTotals", "[", 
   RowBox[{
    RowBox[{"actsByLevel", "[", 
     RowBox[{"nRangeHeavy", ",", " ", "dHeavy", ",", " ", "1"}], "]"}], ",", 
    "1"}], "]"}]}]], "Input",
 CellChangeTimes->{{3.5690765447956905`*^9, 3.569076553600194*^9}, {
   3.569077176407817*^9, 3.5690771774168744`*^9}, {3.56907727192628*^9, 
   3.5690772741544075`*^9}, {3.5690774261341004`*^9, 
   3.5690774352246203`*^9}, {3.5690781092041693`*^9, 3.5690781098152046`*^9}, 
   3.5690781431811132`*^9, {3.569078188690716*^9, 3.5690781894617605`*^9}, {
   3.569078621713484*^9, 3.5690786257727156`*^9}, {3.569078662537819*^9, 
   3.569078713770749*^9}, {3.5690789338873386`*^9, 3.569078942322821*^9}, {
   3.5690799072710133`*^9, 3.5690799792901325`*^9}, {3.569080226953298*^9, 
   3.569080253180798*^9}, {3.569081083275277*^9, 3.569081101328309*^9}, {
   3.569081137690389*^9, 3.5690811474199457`*^9}, {3.569081294149338*^9, 
   3.5690813213728952`*^9}, {3.5690819028251524`*^9, 3.569081904461246*^9}, {
   3.5690935861354*^9, 3.5690935886705446`*^9}}],

Cell[BoxData[
 GraphicsBox[{
   {RGBColor[0.987148, 0.8073604000000001, 0.49470040000000004`], EdgeForm[{
    Opacity[0.5599999999999999], Thickness[Small]}], {}, 
    {RGBColor[0.987148, 0.8073604000000001, 0.49470040000000004`], EdgeForm[{
     Opacity[0.5599999999999999], Thickness[Small]}], 
     TagBox[
      TooltipBox[
       TagBox[
        DynamicBox[{
          FEPrivate`If[
           CurrentValue["MouseOver"], 
           EdgeForm[{
             GrayLevel[0.5], 
             AbsoluteThickness[1.5], 
             Opacity[0.66]}], {}, {}], 
          RectangleBox[{806000., 0}, {808000., 12}, "RoundingRadius" -> 0]},
         ImageSizeCache->{{26.254403522817483`, 43.015412329863466`}, {
          88.17571817587556, 91.93456273819338}}],
        StatusArea[#, 12]& ,
        TagBoxNote->"12"],
       StyleBox["12", {}, StripOnInput -> False]],
      Annotation[#, 
       Style[12, {}], "Tooltip"]& ], 
     TagBox[
      TooltipBox[
       TagBox[
        DynamicBox[{
          FEPrivate`If[
           CurrentValue["MouseOver"], 
           EdgeForm[{
             GrayLevel[0.5], 
             AbsoluteThickness[1.5], 
             Opacity[0.66]}], {}, {}], 
          RectangleBox[{808000., 0}, {810000., 17}, "RoundingRadius" -> 0]},
         ImageSizeCache->{{42.515412329863466`, 59.27642113690854}, {
          86.8178662749098, 91.93456273819338}}],
        StatusArea[#, 17]& ,
        TagBoxNote->"17"],
       StyleBox["17", {}, StripOnInput -> False]],
      Annotation[#, 
       Style[17, {}], "Tooltip"]& ], 
     TagBox[
      TooltipBox[
       TagBox[
        DynamicBox[{
          FEPrivate`If[
           CurrentValue["MouseOver"], 
           EdgeForm[{
             GrayLevel[0.5], 
             AbsoluteThickness[1.5], 
             Opacity[0.66]}], {}, {}], 
          RectangleBox[{810000., 0}, {812000., 53}, "RoundingRadius" -> 0]},
         ImageSizeCache->{{58.77642113690854, 75.53742994395452}, {
          77.04133258795635, 91.93456273819338}}],
        StatusArea[#, 53]& ,
        TagBoxNote->"53"],
       StyleBox["53", {}, StripOnInput -> False]],
      Annotation[#, 
       Style[53, {}], "Tooltip"]& ], 
     TagBox[
      TooltipBox[
       TagBox[
        DynamicBox[{
          FEPrivate`If[
           CurrentValue["MouseOver"], 
           EdgeForm[{
             GrayLevel[0.5], 
             AbsoluteThickness[1.5], 
             Opacity[0.66]}], {}, {}], 
          RectangleBox[{812000., 0}, {814000., 85}, "RoundingRadius" -> 0]},
         ImageSizeCache->{{75.03742994395452, 91.7984387510005}, {
          68.35108042177549, 91.93456273819338}}],
        StatusArea[#, 85]& ,
        TagBoxNote->"85"],
       StyleBox["85", {}, StripOnInput -> False]],
      Annotation[#, 
       Style[85, {}], "Tooltip"]& ], 
     TagBox[
      TooltipBox[
       TagBox[
        DynamicBox[{
          FEPrivate`If[
           CurrentValue["MouseOver"], 
           EdgeForm[{
             GrayLevel[0.5], 
             AbsoluteThickness[1.5], 
             Opacity[0.66]}], {}, {}], 
          RectangleBox[{814000., 0}, {816000., 207}, "RoundingRadius" -> 0]},
         ImageSizeCache->{{91.2984387510005, 108.05944755804558`}, {
          35.21949403821102, 91.93456273819338}}],
        StatusArea[#, 207]& ,
        TagBoxNote->"207"],
       StyleBox["207", {}, StripOnInput -> False]],
      Annotation[#, 
       Style[207, {}], "Tooltip"]& ], 
     TagBox[
      TooltipBox[
       TagBox[
        DynamicBox[{
          FEPrivate`If[
           CurrentValue["MouseOver"], 
           EdgeForm[{
             GrayLevel[0.5], 
             AbsoluteThickness[1.5], 
             Opacity[0.66]}], {}, {}], 
          RectangleBox[{816000., 0}, {818000., 339}, "RoundingRadius" -> 0]},
         ImageSizeCache->{{107.55944755804558`, 
          124.32045636509156`}, {-0.6277961472849825, 91.93456273819338}}],
        StatusArea[#, 339]& ,
        TagBoxNote->"339"],
       StyleBox["339", {}, StripOnInput -> False]],
      Annotation[#, 
       Style[339, {}], "Tooltip"]& ], 
     TagBox[
      TooltipBox[
       TagBox[
        DynamicBox[{
          FEPrivate`If[
           CurrentValue["MouseOver"], 
           EdgeForm[{
             GrayLevel[0.5], 
             AbsoluteThickness[1.5], 
             Opacity[0.66]}], {}, {}], 
          RectangleBox[{818000., 0}, {820000., 490}, "RoundingRadius" -> 0]},
         ImageSizeCache->{{123.82045636509156`, 
          140.58146517213663`}, {-41.63492355645086, 91.93456273819338}}],
        StatusArea[#, 490]& ,
        TagBoxNote->"490"],
       StyleBox["490", {}, StripOnInput -> False]],
      Annotation[#, 
       Style[490, {}], "Tooltip"]& ], 
     TagBox[
      TooltipBox[
       TagBox[
        DynamicBox[{
          FEPrivate`If[
           CurrentValue["MouseOver"], 
           EdgeForm[{
             GrayLevel[0.5], 
             AbsoluteThickness[1.5], 
             Opacity[0.66]}], {}, {}], 
          RectangleBox[{820000., 0}, {822000., 621}, "RoundingRadius" -> 0]},
         ImageSizeCache->{{140.08146517213663`, 
          156.8424739791826}, {-77.2106433617537, 91.93456273819338}}],
        StatusArea[#, 621]& ,
        TagBoxNote->"621"],
       StyleBox["621", {}, StripOnInput -> False]],
      Annotation[#, 
       Style[621, {}], "Tooltip"]& ], 
     TagBox[
      TooltipBox[
       TagBox[
        DynamicBox[{
          FEPrivate`If[
           CurrentValue["MouseOver"], 
           EdgeForm[{
             GrayLevel[0.5], 
             AbsoluteThickness[1.5], 
             Opacity[0.66]}], {}, {}], 
          RectangleBox[{822000., 0}, {824000., 717}, "RoundingRadius" -> 0]},
         ImageSizeCache->{{156.3424739791826, 
          173.1034827862286}, {-103.28139986029625`, 91.93456273819338}}],
        StatusArea[#, 717]& ,
        TagBoxNote->"717"],
       StyleBox["717", {}, StripOnInput -> False]],
      Annotation[#, 
       Style[717, {}], "Tooltip"]& ], 
     TagBox[
      TooltipBox[
       TagBox[
        DynamicBox[{
          FEPrivate`If[
           CurrentValue["MouseOver"], 
           EdgeForm[{
             GrayLevel[0.5], 
             AbsoluteThickness[1.5], 
             Opacity[0.66]}], {}, {}], 
          RectangleBox[{824000., 0}, {826000., 680}, "RoundingRadius" -> 0]},
         ImageSizeCache->{{172.6034827862286, 
          189.36449159327367`}, {-93.23329579314965, 91.93456273819338}}],
        StatusArea[#, 680]& ,
        TagBoxNote->"680"],
       StyleBox["680", {}, StripOnInput -> False]],
      Annotation[#, 
       Style[680, {}], "Tooltip"]& ], 
     TagBox[
      TooltipBox[
       TagBox[
        DynamicBox[{
          FEPrivate`If[
           CurrentValue["MouseOver"], 
           EdgeForm[{
             GrayLevel[0.5], 
             AbsoluteThickness[1.5], 
             Opacity[0.66]}], {}, {}], 
          RectangleBox[{826000., 0}, {828000., 592}, "RoundingRadius" -> 0]},
         ImageSizeCache->{{188.86449159327367`, 
          205.62550040031965`}, {-69.3351023361523, 91.93456273819338}}],
        StatusArea[#, 592]& ,
        TagBoxNote->"592"],
       StyleBox["592", {}, StripOnInput -> False]],
      Annotation[#, 
       Style[592, {}], "Tooltip"]& ], 
     TagBox[
      TooltipBox[
       TagBox[
        DynamicBox[{
          FEPrivate`If[
           CurrentValue["MouseOver"], 
           EdgeForm[{
             GrayLevel[0.5], 
             AbsoluteThickness[1.5], 
             Opacity[0.66]}], {}, {}], 
          RectangleBox[{828000., 0}, {830000., 524}, "RoundingRadius" -> 0]},
         ImageSizeCache->{{205.12550040031965`, 
          221.88650920736472`}, {-50.868316483018006`, 91.93456273819338}}],
        StatusArea[#, 524]& ,
        TagBoxNote->"524"],
       StyleBox["524", {}, StripOnInput -> False]],
      Annotation[#, 
       Style[524, {}], "Tooltip"]& ], 
     TagBox[
      TooltipBox[
       TagBox[
        DynamicBox[{
          FEPrivate`If[
           CurrentValue["MouseOver"], 
           EdgeForm[{
             GrayLevel[0.5], 
             AbsoluteThickness[1.5], 
             Opacity[0.66]}], {}, {}], 
          RectangleBox[{830000., 0}, {832000., 315}, "RoundingRadius" -> 0]},
         ImageSizeCache->{{221.38650920736472`, 238.1475180144107}, {
          5.889892977350655, 91.93456273819338}}],
        StatusArea[#, 315]& ,
        TagBoxNote->"315"],
       StyleBox["315", {}, StripOnInput -> False]],
      Annotation[#, 
       Style[315, {}], "Tooltip"]& ], 
     TagBox[
      TooltipBox[
       TagBox[
        DynamicBox[{
          FEPrivate`If[
           CurrentValue["MouseOver"], 
           EdgeForm[{
             GrayLevel[0.5], 
             AbsoluteThickness[1.5], 
             Opacity[0.66]}], {}, {}], 
          RectangleBox[{832000., 0}, {834000., 188}, "RoundingRadius" -> 0]},
         ImageSizeCache->{{237.6475180144107, 254.4085268214567}, {
          40.3793312618809, 91.93456273819338}}],
        StatusArea[#, 188]& ,
        TagBoxNote->"188"],
       StyleBox["188", {}, StripOnInput -> False]],
      Annotation[#, 
       Style[188, {}], "Tooltip"]& ], 
     TagBox[
      TooltipBox[
       TagBox[
        DynamicBox[{
          FEPrivate`If[
           CurrentValue["MouseOver"], 
           EdgeForm[{
             GrayLevel[0.5], 
             AbsoluteThickness[1.5], 
             Opacity[0.66]}], {}, {}], 
          RectangleBox[{834000., 0}, {836000., 86}, "RoundingRadius" -> 0]},
         ImageSizeCache->{{253.9085268214567, 270.66953562850176`}, {
          68.07951004158235, 91.93456273819338}}],
        StatusArea[#, 86]& ,
        TagBoxNote->"86"],
       StyleBox["86", {}, StripOnInput -> False]],
      Annotation[#, 
       Style[86, {}], "Tooltip"]& ], 
     TagBox[
      TooltipBox[
       TagBox[
        DynamicBox[{
          FEPrivate`If[
           CurrentValue["MouseOver"], 
           EdgeForm[{
             GrayLevel[0.5], 
             AbsoluteThickness[1.5], 
             Opacity[0.66]}], {}, {}], 
          RectangleBox[{836000., 0}, {838000., 43}, "RoundingRadius" -> 0]},
         ImageSizeCache->{{270.16953562850176`, 286.93054443554774`}, {
          79.75703638988786, 91.93456273819338}}],
        StatusArea[#, 43]& ,
        TagBoxNote->"43"],
       StyleBox["43", {}, StripOnInput -> False]],
      Annotation[#, 
       Style[43, {}], "Tooltip"]& ], 
     TagBox[
      TooltipBox[
       TagBox[
        DynamicBox[{
          FEPrivate`If[
           CurrentValue["MouseOver"], 
           EdgeForm[{
             GrayLevel[0.5], 
             AbsoluteThickness[1.5], 
             Opacity[0.66]}], {}, {}], 
          RectangleBox[{838000., 0}, {840000., 23}, "RoundingRadius" -> 0]},
         ImageSizeCache->{{286.43054443554774`, 303.1915532425928}, {
          85.1884439937509, 91.93456273819338}}],
        StatusArea[#, 23]& ,
        TagBoxNote->"23"],
       StyleBox["23", {}, StripOnInput -> False]],
      Annotation[#, 
       Style[23, {}], "Tooltip"]& ], 
     TagBox[
      TooltipBox[
       TagBox[
        DynamicBox[{
          FEPrivate`If[
           CurrentValue["MouseOver"], 
           EdgeForm[{
             GrayLevel[0.5], 
             AbsoluteThickness[1.5], 
             Opacity[0.66]}], {}, {}], 
          RectangleBox[{840000., 0}, {842000., 6}, "RoundingRadius" -> 0]},
         ImageSizeCache->{{302.6915532425928, 319.4525620496388}, {
          89.80514045703447, 91.93456273819338}}],
        StatusArea[#, 6]& ,
        TagBoxNote->"6"],
       StyleBox["6", {}, StripOnInput -> False]],
      Annotation[#, 
       Style[6, {}], "Tooltip"]& ], 
     TagBox[
      TooltipBox[
       TagBox[
        DynamicBox[{
          FEPrivate`If[
           CurrentValue["MouseOver"], 
           EdgeForm[{
             GrayLevel[0.5], 
             AbsoluteThickness[1.5], 
             Opacity[0.66]}], {}, {}], 
          RectangleBox[{842000., 0}, {844000., 1}, "RoundingRadius" -> 0]},
         ImageSizeCache->{{318.9525620496388, 335.7135708566848}, {
          91.16299235800022, 91.93456273819338}}],
        StatusArea[#, 1]& ,
        TagBoxNote->"1"],
       StyleBox["1", {}, StripOnInput -> False]],
      Annotation[#, 
       Style[1, {}], "Tooltip"]& ], 
     TagBox[
      TooltipBox[
       TagBox[
        DynamicBox[{
          FEPrivate`If[
           CurrentValue["MouseOver"], 
           EdgeForm[{
             GrayLevel[0.5], 
             AbsoluteThickness[1.5], 
             Opacity[0.66]}], {}, {}], 
          RectangleBox[{844000., 0}, {846000., 1}, "RoundingRadius" -> 0]},
         ImageSizeCache->{{335.2135708566848, 351.97457966372986`}, {
          91.16299235800022, 91.93456273819338}}],
        StatusArea[#, 1]& ,
        TagBoxNote->"1"],
       StyleBox["1", {}, StripOnInput -> False]],
      Annotation[#, 
       Style[1, {}], 
       "Tooltip"]& ]}, {}, {}}, {{}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, \
{}, {}, {}, {}, {}, {}, {}, {}, {}}},
  AspectRatio->NCache[GoldenRatio^(-1), 0.6180339887498948],
  Axes->{True, True},
  AxesLabel->{None, None},
  AxesOrigin->{805200., 0},
  FrameLabel->{{None, None}, {None, None}},
  FrameTicks->{{Automatic, Automatic}, {Automatic, Automatic}},
  GridLines->{None, None},
  GridLinesStyle->Directive[
    GrayLevel[0.5, 0.4]],
  PlotRange->{{806000., 846000.}, {All, All}},
  PlotRangePadding->{{
     Scaled[0.02], 
     Scaled[0.02]}, {
     Scaled[0.02], 
     Scaled[0.05]}},
  Ticks->{Automatic, Automatic}]], "Output",
 CellChangeTimes->{
  3.5690765572724047`*^9, {3.5690766351528587`*^9, 3.5690766579251614`*^9}, 
   3.569076737870734*^9, 3.5690767825662904`*^9, 3.5690768790048065`*^9, {
   3.5690769267405367`*^9, 3.5690769718001137`*^9}, 3.569077065004445*^9, 
   3.56907718153611*^9, 3.569077280549773*^9, 3.5690773117055554`*^9, {
   3.569077382632612*^9, 3.569077404496863*^9}, 3.5690774392018476`*^9, {
   3.5690781166275945`*^9, 3.5690781445681925`*^9}, 3.569078190821838*^9, {
   3.569078226734892*^9, 3.569078233481278*^9}, 3.5690785234568634`*^9, {
   3.56907859193478*^9, 3.56907862671577*^9}, {3.5690786788447514`*^9, 
   3.569078715220832*^9}, 3.569078756385186*^9, 3.5690787891000576`*^9, 
   3.5690788496625214`*^9, 3.5690789490782075`*^9, 3.5690790072355337`*^9, 
   3.5690795074371443`*^9, 3.5690795448302827`*^9, 3.5690798775713143`*^9, {
   3.569079910490197*^9, 3.569079981104236*^9}, {3.5690802367638593`*^9, 
   3.56908025443287*^9}, 3.569081441593772*^9, 3.5690819057403193`*^9, 
   3.569093167462453*^9, 3.5690936527002068`*^9, 3.569162561713084*^9, 
   3.5691667342347393`*^9, 3.5691675627021246`*^9, 3.5691679577427197`*^9, 
   3.569288618019105*^9, 3.5692896326460876`*^9, 3.569780178427558*^9, 
   3.5732963352362323`*^9, 3.573296932693405*^9, 3.6035661170753927`*^9, 
   3.603666047182273*^9, 3.6036719897999783`*^9, 3.603703717650435*^9, 
   3.617811599563756*^9, 3.617815493983718*^9}]
}, {2}]],

Cell["\<\
Extra Heavy User Activity Counts (after normalizing for intensity)\
\>", "Text",
 CellChangeTimes->{{3.603665833782167*^9, 3.603665908242449*^9}, {
  3.6036659457520437`*^9, 3.6036659500475388`*^9}}],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", " ", 
   RowBox[{
   "Total", " ", "activity", " ", "counts", " ", "across", " ", "all", " ", 
    RowBox[{"levels", " ", "--"}], " ", "COMPLEXITY", " ", "WEIGHTED"}], " ", 
   "*)"}], "\[IndentingNewLine]", 
  RowBox[{"dStatsTotals", "[", 
   RowBox[{
    RowBox[{"actsByLevel", "[", 
     RowBox[{"nRangeExHeavy", ",", " ", "dExHeavy", ",", " ", "1"}], "]"}], 
    ",", "1"}], "]"}]}]], "Input",
 CellChangeTimes->{{3.5690765447956905`*^9, 3.569076553600194*^9}, {
   3.569077176407817*^9, 3.5690771774168744`*^9}, {3.56907727192628*^9, 
   3.5690772741544075`*^9}, {3.5690774261341004`*^9, 
   3.5690774352246203`*^9}, {3.5690781092041693`*^9, 3.5690781098152046`*^9}, 
   3.5690781431811132`*^9, {3.569078188690716*^9, 3.5690781894617605`*^9}, {
   3.569078621713484*^9, 3.5690786257727156`*^9}, {3.569078662537819*^9, 
   3.569078713770749*^9}, {3.5690789338873386`*^9, 3.569078942322821*^9}, {
   3.5690799072710133`*^9, 3.5690799792901325`*^9}, {3.569080226953298*^9, 
   3.569080253180798*^9}, {3.569081083275277*^9, 3.569081101328309*^9}, {
   3.569081137690389*^9, 3.5690811474199457`*^9}, {3.569081294149338*^9, 
   3.5690813213728952`*^9}, {3.5690819028251524`*^9, 3.569081904461246*^9}, {
   3.5690935147483163`*^9, 3.569093524089851*^9}}],

Cell[BoxData[
 GraphicsBox[{
   {RGBColor[0.987148, 0.8073604000000001, 0.49470040000000004`], EdgeForm[{
    Opacity[0.46199999999999997`], Thickness[Small]}], {}, 
    {RGBColor[0.987148, 0.8073604000000001, 0.49470040000000004`], EdgeForm[{
     Opacity[0.46199999999999997`], Thickness[Small]}], 
     RectangleBox[{2.366*^6, 0}, {2.368*^6, 1},
      RoundingRadius->0], RectangleBox[{2.372*^6, 0}, {2.374*^6, 2},
      RoundingRadius->0], RectangleBox[{2.374*^6, 0}, {2.376*^6, 4},
      RoundingRadius->0], RectangleBox[{2.376*^6, 0}, {2.378*^6, 11},
      RoundingRadius->0], RectangleBox[{2.378*^6, 0}, {2.38*^6, 13},
      RoundingRadius->0], RectangleBox[{2.38*^6, 0}, {2.382*^6, 43},
      RoundingRadius->0], RectangleBox[{2.382*^6, 0}, {2.384*^6, 42},
      RoundingRadius->0], RectangleBox[{2.384*^6, 0}, {2.386*^6, 80},
      RoundingRadius->0], RectangleBox[{2.386*^6, 0}, {2.388*^6, 130},
      RoundingRadius->0], RectangleBox[{2.388*^6, 0}, {2.39*^6, 174},
      RoundingRadius->0], RectangleBox[{2.39*^6, 0}, {2.392*^6, 264},
      RoundingRadius->0], RectangleBox[{2.392*^6, 0}, {2.394*^6, 362},
      RoundingRadius->0], RectangleBox[{2.394*^6, 0}, {2.396*^6, 443},
      RoundingRadius->0], RectangleBox[{2.396*^6, 0}, {2.398*^6, 418},
      RoundingRadius->0], RectangleBox[{2.398*^6, 0}, {2.4*^6, 474},
      RoundingRadius->0], RectangleBox[{2.4*^6, 0}, {2.402*^6, 506},
      RoundingRadius->0], RectangleBox[{2.402*^6, 0}, {2.404*^6, 463},
      RoundingRadius->0], RectangleBox[{2.404*^6, 0}, {2.406*^6, 425},
      RoundingRadius->0], RectangleBox[{2.406*^6, 0}, {2.408*^6, 339},
      RoundingRadius->0], RectangleBox[{2.408*^6, 0}, {2.41*^6, 279},
      RoundingRadius->0], RectangleBox[{2.41*^6, 0}, {2.412*^6, 195},
      RoundingRadius->0], RectangleBox[{2.412*^6, 0}, {2.414*^6, 144},
      RoundingRadius->0], RectangleBox[{2.414*^6, 0}, {2.416*^6, 80},
      RoundingRadius->0], RectangleBox[{2.416*^6, 0}, {2.418*^6, 56},
      RoundingRadius->0], RectangleBox[{2.418*^6, 0}, {2.42*^6, 22},
      RoundingRadius->0], RectangleBox[{2.42*^6, 0}, {2.422*^6, 19},
      RoundingRadius->0], RectangleBox[{2.422*^6, 0}, {2.424*^6, 6},
      RoundingRadius->0], RectangleBox[{2.424*^6, 0}, {2.426*^6, 3},
      RoundingRadius->0], RectangleBox[{2.426*^6, 0}, {2.428*^6, 1},
      RoundingRadius->0], RectangleBox[{2.432*^6, 0}, {2.434*^6, 1},
      RoundingRadius->
       0]}, {}, {}}, {{}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, \
{}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}}},
  AspectRatio->NCache[GoldenRatio^(-1), 0.6180339887498948],
  Axes->{True, True},
  AxesLabel->{None, None},
  AxesOrigin->{2.36464*^6, 0},
  FrameLabel->{{None, None}, {None, None}},
  FrameTicks->{{Automatic, Automatic}, {Automatic, Automatic}},
  GridLines->{None, None},
  GridLinesStyle->Directive[
    GrayLevel[0.5, 0.4]],
  PlotRange->{{2.366*^6, 2.434*^6}, {All, All}},
  PlotRangePadding->{{
     Scaled[0.02], 
     Scaled[0.02]}, {
     Scaled[0.02], 
     Scaled[0.05]}},
  Ticks->{Automatic, Automatic}]], "Output",
 CellChangeTimes->{
  3.5690765572724047`*^9, {3.5690766351528587`*^9, 3.5690766579251614`*^9}, 
   3.569076737870734*^9, 3.5690767825662904`*^9, 3.5690768790048065`*^9, {
   3.5690769267405367`*^9, 3.5690769718001137`*^9}, 3.569077065004445*^9, 
   3.56907718153611*^9, 3.569077280549773*^9, 3.5690773117055554`*^9, {
   3.569077382632612*^9, 3.569077404496863*^9}, 3.5690774392018476`*^9, {
   3.5690781166275945`*^9, 3.5690781445681925`*^9}, 3.569078190821838*^9, {
   3.569078226734892*^9, 3.569078233481278*^9}, 3.5690785234568634`*^9, {
   3.56907859193478*^9, 3.56907862671577*^9}, {3.5690786788447514`*^9, 
   3.569078715220832*^9}, 3.569078756385186*^9, 3.5690787891000576`*^9, 
   3.5690788496625214`*^9, 3.5690789490782075`*^9, 3.5690790072355337`*^9, 
   3.5690795074371443`*^9, 3.5690795448302827`*^9, 3.5690798775713143`*^9, {
   3.569079910490197*^9, 3.569079981104236*^9}, {3.5690802367638593`*^9, 
   3.56908025443287*^9}, 3.569081441593772*^9, 3.5690819057403193`*^9, 
   3.569093167462453*^9, 3.5690936597296085`*^9, 3.5691625694875293`*^9, 
   3.5691667418461742`*^9, 3.56916756943351*^9, 3.5691679644331026`*^9, 
   3.5692886246179166`*^9, 3.5692896392292995`*^9, 3.569780185231947*^9, 
   3.5732963423606396`*^9, 3.573296940103829*^9, 3.6035661197045*^9, 
   3.603666082061961*^9, 3.603671990046649*^9, 3.603703717887741*^9, 
   3.617811599899218*^9, 3.617815494313936*^9}]
}, {2}]],

Cell["\<\
We take the average number of activities for each type of user as the point \
estimate.\
\>", "Text",
 CellChangeTimes->{{3.603666400946913*^9, 3.603666464510104*^9}}],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", " ", 
   RowBox[{
    RowBox[{
    "Total", " ", "mean", " ", "activity", " ", "count", " ", "across", " ", 
     "all", " ", "user", " ", "types", " ", "and", " ", "all", " ", 
     "complexity"}], "-", 
    RowBox[{"weighted", " ", "activities"}]}], " ", "*)"}], 
  "\[IndentingNewLine]", 
  RowBox[{"(*", " ", 
   RowBox[{
    RowBox[{
    "For", " ", "1", " ", "user", " ", "of", " ", "certain", " ", "type"}], 
    ",", " ", 
    RowBox[{
     RowBox[{
     "the", " ", "mean", " ", "total", " ", "number", " ", "of", " ", 
      "complexity"}], "-", 
     RowBox[{
     "weighted", " ", "activities", " ", "across", " ", "all", " ", 
      "levels"}]}]}], " ", "*)"}], "\[IndentingNewLine]", 
  RowBox[{
   RowBox[{"mt1Light", " ", "=", " ", 
    RowBox[{"meanTotalsByTrial", "[", 
     RowBox[{"actsByLevel", "[", 
      RowBox[{"nRangeLight", ",", " ", "dLight", ",", "1"}], "]"}], "]"}]}], 
   "\[IndentingNewLine]", 
   RowBox[{"mt1Std", " ", "=", " ", 
    RowBox[{"meanTotalsByTrial", "[", 
     RowBox[{"actsByLevel", "[", 
      RowBox[{"nRangeStd", ",", " ", "dStd", ",", "1"}], "]"}], "]"}]}], 
   "\[IndentingNewLine]", 
   RowBox[{"mt1Heavy", " ", "=", " ", 
    RowBox[{"meanTotalsByTrial", "[", 
     RowBox[{"actsByLevel", "[", 
      RowBox[{"nRangeHeavy", ",", " ", "dHeavy", ",", "1"}], "]"}], "]"}]}], 
   "\[IndentingNewLine]", 
   RowBox[{"mt1ExHeavy", " ", "=", " ", 
    RowBox[{"meanTotalsByTrial", "[", 
     RowBox[{"actsByLevel", "[", 
      RowBox[{"nRangeExHeavy", ",", " ", "dExHeavy", ",", "1"}], "]"}], 
     "]"}]}]}]}]], "Input",
 CellChangeTimes->{{3.5691009925920324`*^9, 3.56910112524962*^9}, {
  3.5691018802668047`*^9, 3.5691019004789605`*^9}, {3.5691019669357615`*^9, 
  3.5691020164585943`*^9}, {3.5691020673565054`*^9, 3.569102073859877*^9}, {
  3.5691021447459316`*^9, 3.5691021513913116`*^9}, {3.569102487708548*^9, 
  3.56910262813658*^9}, {3.569102686487918*^9, 3.5691027616082144`*^9}, {
  3.569103711430541*^9, 3.569103719176984*^9}}],

Cell[BoxData["101013.77236000003`"], "Output",
 CellChangeTimes->{3.5691037205980654`*^9, 3.5691625700785627`*^9, 
  3.569166742400206*^9, 3.5691675699615397`*^9, 3.569167964954132*^9, 
  3.5692886251483173`*^9, 3.5692896397285004`*^9, 3.569780185771978*^9, 
  3.5732963429016705`*^9, 3.573296940685862*^9, 3.603566119910215*^9, 
  3.603666189695383*^9, 3.6036719902338257`*^9, 3.603703718063855*^9, 
  3.617811600235674*^9, 3.6178154946203527`*^9}],

Cell[BoxData["303021.71904000046`"], "Output",
 CellChangeTimes->{3.5691037205980654`*^9, 3.5691625700785627`*^9, 
  3.569166742400206*^9, 3.5691675699615397`*^9, 3.569167964954132*^9, 
  3.5692886251483173`*^9, 3.5692896397285004`*^9, 3.569780185771978*^9, 
  3.5732963429016705`*^9, 3.573296940685862*^9, 3.603566119910215*^9, 
  3.603666189695383*^9, 3.6036719902338257`*^9, 3.603703718063855*^9, 
  3.617811600235674*^9, 3.617815494848319*^9}],

Cell[BoxData["824088.5078999986`"], "Output",
 CellChangeTimes->{3.5691037205980654`*^9, 3.5691625700785627`*^9, 
  3.569166742400206*^9, 3.5691675699615397`*^9, 3.569167964954132*^9, 
  3.5692886251483173`*^9, 3.5692896397285004`*^9, 3.569780185771978*^9, 
  3.5732963429016705`*^9, 3.573296940685862*^9, 3.603566119910215*^9, 
  3.603666189695383*^9, 3.6036719902338257`*^9, 3.603703718063855*^9, 
  3.617811600235674*^9, 3.6178154950961933`*^9}],

Cell[BoxData["2.399676354`*^6"], "Output",
 CellChangeTimes->{3.5691037205980654`*^9, 3.5691625700785627`*^9, 
  3.569166742400206*^9, 3.5691675699615397`*^9, 3.569167964954132*^9, 
  3.5692886251483173`*^9, 3.5692896397285004`*^9, 3.569780185771978*^9, 
  3.5732963429016705`*^9, 3.573296940685862*^9, 3.603566119910215*^9, 
  3.603666189695383*^9, 3.6036719902338257`*^9, 3.603703718063855*^9, 
  3.617811600235674*^9, 3.617815495344367*^9}]
}, {2, 3, 4, 5}]],

Cell["\<\
The total number of complexity-weighted activities that are estimated from \
the Monte Carlo are:\
\>", "Text",
 CellChangeTimes->{{3.603666335934861*^9, 3.603666385858638*^9}}],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", " ", 
   RowBox[{
    RowBox[{
    "Total", " ", "mean", " ", "number", " ", "of", " ", "activities", " ", 
     "for", " ", "n1", " ", "Light"}], ",", " ", 
    RowBox[{"n2", " ", "Std"}], ",", " ", 
    RowBox[{"n3", " ", "Heavy"}], ",", " ", 
    RowBox[{"and", " ", "n4", " ", "Ex", " ", "Heavy", " ", "users"}]}], " ", 
   "*)"}], "\[IndentingNewLine]", 
  RowBox[{"mtAllUsers", " ", "=", " ", 
   RowBox[{"Total", "[", 
    RowBox[{"{", 
     RowBox[{
      RowBox[{"mt1Light", " ", "*", " ", "numLightIEU"}], ",", " ", 
      RowBox[{"mt1Std", " ", "*", " ", "numStandardIEU"}], ",", " ", 
      RowBox[{"mt1Heavy", " ", "*", " ", "numHeavyIEU"}], ",", " ", 
      RowBox[{"mt1ExHeavy", " ", "*", " ", "numExtremelyHeavyIEU"}]}], "}"}], 
    "]"}]}]}]], "Input",
 CellChangeTimes->{{3.5691028106550198`*^9, 3.5691028931097355`*^9}, {
  3.569102923113452*^9, 3.5691029647338324`*^9}}],

Cell[BoxData["3.627800353299999`*^6"], "Output",
 CellChangeTimes->{
  3.569102770006695*^9, {3.569102971008191*^9, 3.569102977770578*^9}, 
   3.569103050898761*^9, {3.569103412850463*^9, 3.5691034253371773`*^9}, 
   3.569103573710664*^9, {3.569103654044259*^9, 3.569103664594862*^9}, 
   3.569103735981945*^9, 3.5691625716656537`*^9, 3.569166744031299*^9, 
   3.569167571325618*^9, 3.569167966404215*^9, 3.56928862659912*^9, 
   3.569289641023303*^9, 3.569780187326067*^9, 3.5732963445347643`*^9, 
   3.5732969422649527`*^9, 3.603566120584717*^9, 3.6036661609313803`*^9, 
   3.603666194292656*^9, 3.6036719908626337`*^9, 3.6037037186929073`*^9, 
   3.617811601058597*^9, 3.61781549543034*^9}]
}, {2}]],

Cell["\<\
Because this is a simulation this total number of activities will change from \
one simulation to the next. How much will it change? We can find out by \
running the Monte Carlo multiple times and see how the results vary. 

I won\[CloseCurlyQuote]t show the results here, but as you might guess, the \
bands get tighter -- the conditions under which this occurs (rather than say, \
a widening of the range) quickly opens up vistas in mathematical statistics. \
Seeing how these bands evolve gives us  a sense of whether the errors in the \
process are random or systematic.\
\>", "Text",
 CellChangeTimes->{{3.603666482959358*^9, 3.603666535003927*^9}, {
  3.603666622746339*^9, 3.603666685708612*^9}, {3.60366676853162*^9, 
  3.603666917240361*^9}, {3.603667042430682*^9, 3.6036671240247307`*^9}, {
  3.6036676110895567`*^9, 3.603667652021007*^9}, {3.603700981703191*^9, 
  3.603701004930851*^9}, {3.603701059478582*^9, 3.60370109612227*^9}}]
}, Open  ]],

Cell[CellGroupData[{

Cell["Summary", "Section",
 CellChangeTimes->{{3.60367070760503*^9, 3.603670708602441*^9}}],

Cell["\<\
We\[CloseCurlyQuote]ve explored four areas where data are sparse and \
simulation serves us well. In addition to helping make the most out of \
available data, simulation is useful for the following reasons.

* Even simple problems get complicated very quickly (pricing, birthdays, \
\[Ellipsis]).
* Not everyone finds equations insightful. Navier-Stokes equations and \
Maxwell\[CloseCurlyQuote]s laws are bursting with insight for physicists but \
hold no special meaning for most of us.
* Manipulating equations is hard and there\[CloseCurlyQuote]s not much \
insight in manipulating them.
* Even when something is in equation form, it might not have a \
\[OpenCurlyDoubleQuote]closed form\[CloseCurlyDoubleQuote] solution (e.g. the \
3-body problem in celestial mechanics).
* It\[CloseCurlyQuote]s hard to get something you want to study into an \
equation form (e.g. evaluating how good an algorithm is).
\
\>", "Text",
 CellChangeTimes->{{3.603671174082383*^9, 3.6036712123065157`*^9}, {
  3.603671425493497*^9, 3.60367179725115*^9}, {3.603671873774452*^9, 
  3.603671885732325*^9}, {3.60367242023582*^9, 3.603672470014709*^9}, {
  3.61781131300172*^9, 3.617811324367872*^9}}]
}, Open  ]]
}, Open  ]]
},
WindowSize->{813, 675},
WindowMargins->{{Automatic, 2}, {Automatic, 0}},
PrintingCopies->1,
PrintingStartingPageNumber->1,
PrintingPageRange->{1, Automatic},
PageHeaders->{{
   Cell[
    TextData[{
      StyleBox[
       CounterBox["Page"], "PageNumber"], "   ", "|", " ", 
      StyleBox[
       ValueBox["FileName"], "Header"]}], "Header", 
    CellMargins -> {{0, Inherited}, {Inherited, Inherited}}], None, None}, {
  None, None, 
   Cell[
    TextData[{
      StyleBox[
       ValueBox["FileName"], "Header"], " ", "|", "   ", 
      StyleBox[
       CounterBox["Page"], "PageNumber"]}], "Header", 
    CellMargins -> {{Inherited, 0}, {Inherited, Inherited}}]}},
PageFooters->{{None, None, None}, {None, None, None}},
PageHeaderLines->{False, False},
PageFooterLines->{False, False},
PrintingOptions->{"FacingPages"->True,
"FirstPageFace"->Right,
"FirstPageFooter"->True,
"FirstPageHeader"->False,
"PaperOrientation"->"Portrait",
"PaperSize"->{612, 792}},
FrontEndVersion->"11.0 for Mac OS X x86 (32-bit, 64-bit Kernel) (July 28, \
2016)",
StyleDefinitions->"Default.nb"
]
(* End of Notebook Content *)

(* Internal cache information *)
(*CellTagsOutline
CellTagsIndex->{}
*)
(*CellTagsIndex
CellTagsIndex->{}
*)
(*NotebookFileOutline
Notebook[{
Cell[CellGroupData[{
Cell[1486, 35, 318, 4, 92, "Title"],
Cell[1807, 41, 409, 7, 94, "Subsection"],
Cell[CellGroupData[{
Cell[2241, 52, 233, 3, 50, "Section"],
Cell[2477, 57, 3465, 50, 467, "Text"],
Cell[5945, 109, 970, 21, 54, "Input"],
Cell[CellGroupData[{
Cell[6940, 134, 294, 7, 32, "Input"],
Cell[7237, 143, 385, 9, 32, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[7659, 157, 723, 15, 54, "Input"],
Cell[8385, 174, 5268, 121, 240, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[13690, 300, 248, 5, 28, "Input"],
Cell[13941, 307, 323, 5, 32, "Output"]
}, {2}]],
Cell[14276, 315, 962, 15, 106, "Text"],
Cell[15241, 332, 705, 11, 68, "Text"],
Cell[15949, 345, 371, 6, 68, "Text"],
Cell[16323, 353, 711, 15, 32, "Input"],
Cell[17037, 370, 263, 5, 30, "Text"],
Cell[CellGroupData[{
Cell[17325, 379, 903, 19, 28, "Input"],
Cell[18231, 400, 446, 6, 32, "Output"]
}, {2}]],
Cell[18689, 409, 310, 6, 30, "Text"],
Cell[CellGroupData[{
Cell[19024, 419, 248, 5, 28, "Input"],
Cell[19275, 426, 249, 4, 32, "Output"]
}, {2}]],
Cell[19536, 433, 491, 8, 49, "Text"]
}, Open  ]],
Cell[CellGroupData[{
Cell[20064, 446, 381, 7, 99, "Section"],
Cell[20448, 455, 1915, 31, 334, "Text"],
Cell[22366, 488, 5901, 123, 369, "Input"],
Cell[28270, 613, 206, 4, 30, "Text"],
Cell[CellGroupData[{
Cell[28501, 621, 150, 3, 28, "Input"],
Cell[28654, 626, 319, 7, 28, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[29010, 638, 602, 15, 28, "Input"],
Cell[29615, 655, 772, 13, 76, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[30424, 673, 139, 2, 28, "Input"],
Cell[30566, 677, 1213, 31, 246, "Output"]
}, Open  ]],
Cell[31794, 711, 525, 9, 68, "Text"],
Cell[CellGroupData[{
Cell[32344, 724, 156, 3, 28, "Input"],
Cell[32503, 729, 1566, 46, 63, "Output"]
}, {2}]],
Cell[34081, 778, 142, 2, 30, "Text",
 Evaluatable->True],
Cell[CellGroupData[{
Cell[34248, 784, 2010, 45, 63, "Input"],
Cell[36261, 831, 7800, 204, 342, "Output"]
}, {2}]],
Cell[44073, 1038, 616, 14, 28, "Input"],
Cell[44692, 1054, 691, 10, 87, "Text"],
Cell[CellGroupData[{
Cell[45408, 1068, 1948, 46, 80, "Input"],
Cell[47359, 1116, 55585, 1418, 361, "Output"]
}, {2}]],
Cell[102956, 2537, 610, 11, 106, "Text"],
Cell[103569, 2550, 129, 1, 30, "Text"],
Cell[CellGroupData[{
Cell[103723, 2555, 314, 8, 28, "Input"],
Cell[104040, 2565, 219, 3, 28, "Output"]
}, Open  ]],
Cell[104274, 2571, 152, 3, 28, "Input"],
Cell[CellGroupData[{
Cell[104451, 2578, 601, 17, 28, "Input"],
Cell[105055, 2597, 196, 3, 28, "Output"]
}, {2}]],
Cell[105263, 2603, 169, 3, 30, "Text"],
Cell[CellGroupData[{
Cell[105457, 2610, 253, 6, 28, "Input"],
Cell[105713, 2618, 205, 3, 28, "Output"]
}, {2}]],
Cell[105930, 2624, 628, 10, 68, "Text"],
Cell[CellGroupData[{
Cell[106583, 2638, 314, 8, 28, "Input"],
Cell[106900, 2648, 191, 3, 28, "Output"]
}, {2}]],
Cell[107103, 2654, 152, 3, 28, "Input"],
Cell[CellGroupData[{
Cell[107280, 2661, 314, 7, 28, "Input"],
Cell[107597, 2670, 205, 3, 28, "Output"]
}, {2}]],
Cell[107814, 2676, 914, 15, 125, "Text"]
}, Open  ]],
Cell[CellGroupData[{
Cell[108765, 2696, 157, 2, 64, "Section"],
Cell[108925, 2700, 1098, 18, 144, "Text"],
Cell[110026, 2720, 10654, 212, 811, "Input"],
Cell[CellGroupData[{
Cell[120705, 2936, 787, 17, 46, "Input"],
Cell[121495, 2955, 864, 18, 46, "Output"]
}, {2}]],
Cell[122371, 2976, 1536, 34, 114, "Input"],
Cell[123910, 3012, 1861, 49, 80, "Input"],
Cell[125774, 3063, 518, 14, 46, "Input"],
Cell[CellGroupData[{
Cell[126317, 3081, 1624, 30, 46, "Input"],
Cell[127944, 3113, 36814, 710, 324, "Output"]
}, {2}]],
Cell[164770, 3826, 682, 17, 46, "Input"],
Cell[CellGroupData[{
Cell[165477, 3847, 1626, 30, 46, "Input"],
Cell[167106, 3879, 41547, 786, 381, "Output"]
}, {2}]],
Cell[208665, 4668, 2519, 38, 410, "Text"]
}, Open  ]],
Cell[CellGroupData[{
Cell[211221, 4711, 228, 3, 64, "Section"],
Cell[211452, 4716, 1599, 26, 296, "Text"],
Cell[213054, 4744, 423, 11, 46, "Input"],
Cell[213480, 4757, 312, 7, 46, "Input"],
Cell[213795, 4766, 1233, 20, 46, "Input"],
Cell[215031, 4788, 737, 18, 63, "Input"],
Cell[CellGroupData[{
Cell[215793, 4810, 4354, 70, 114, "Input"],
Cell[220150, 4882, 2222, 31, 28, "Output"]
}, {2}]],
Cell[222384, 4916, 301, 7, 46, "Input"],
Cell[222688, 4925, 1908, 46, 148, "Input"],
Cell[224599, 4973, 1060, 22, 114, "Input"],
Cell[225662, 4997, 416, 10, 46, "Input"],
Cell[226081, 5009, 3065, 72, 131, "Input"],
Cell[229149, 5083, 1801, 41, 165, "Input"],
Cell[230953, 5126, 89, 1, 46, "Input"],
Cell[231045, 5129, 423, 10, 46, "Input"],
Cell[231471, 5141, 354, 7, 46, "Input"],
Cell[231828, 5150, 439, 9, 46, "Input"],
Cell[232270, 5161, 539, 10, 28, "Input"],
Cell[232812, 5173, 899, 21, 80, "Input"],
Cell[233714, 5196, 705, 16, 46, "Input"],
Cell[234422, 5214, 619, 12, 63, "Input"],
Cell[235044, 5228, 910, 21, 80, "Input"],
Cell[235957, 5251, 979, 23, 97, "Input"],
Cell[236939, 5276, 7739, 162, 743, "Input"],
Cell[244681, 5440, 1331, 30, 114, "Input"],
Cell[246015, 5472, 948, 23, 114, "Input"],
Cell[246966, 5497, 5717, 118, 386, "Input"],
Cell[252686, 5617, 5189, 104, 335, "Input"],
Cell[257878, 5723, 142, 1, 30, "Text"],
Cell[CellGroupData[{
Cell[258045, 5728, 1238, 22, 46, "Input"],
Cell[259286, 5752, 14194, 385, 238, "Output"]
}, {2}]],
Cell[273492, 6140, 201, 4, 30, "Text"],
Cell[CellGroupData[{
Cell[273718, 6148, 1184, 22, 46, "Input"],
Cell[274905, 6172, 9778, 261, 235, "Output"]
}, {2}]],
Cell[284695, 6436, 142, 1, 30, "Text"],
Cell[CellGroupData[{
Cell[284862, 6441, 1286, 23, 46, "Input"],
Cell[286151, 6466, 14845, 403, 238, "Output"]
}, {2}]],
Cell[301008, 6872, 209, 4, 30, "Text"],
Cell[CellGroupData[{
Cell[301242, 6880, 1292, 23, 46, "Input"],
Cell[302537, 6905, 4470, 74, 241, "Output"]
}, {2}]],
Cell[307019, 6982, 177, 4, 30, "Text"],
Cell[CellGroupData[{
Cell[307221, 6990, 2028, 48, 114, "Input"],
Cell[309252, 7040, 449, 6, 28, "Output"],
Cell[309704, 7048, 447, 6, 28, "Output"],
Cell[310154, 7056, 448, 6, 28, "Output"],
Cell[310605, 7064, 443, 6, 32, "Output"]
}, {2, 3, 4, 5}]],
Cell[311069, 7073, 187, 4, 49, "Text"],
Cell[CellGroupData[{
Cell[311281, 7081, 930, 21, 46, "Input"],
Cell[312214, 7104, 693, 10, 32, "Output"]
}, {2}]],
Cell[312919, 7117, 954, 15, 163, "Text"]
}, Open  ]],
Cell[CellGroupData[{
Cell[313910, 7137, 91, 1, 64, "Section"],
Cell[314004, 7140, 1192, 22, 258, "Text"]
}, Open  ]]
}, Open  ]]
}
]
*)

(* End of internal cache information *)

(* NotebookSignature gvp1zFC7LVKnDBgb7b7UpX6J *)
