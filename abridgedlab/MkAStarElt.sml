functor MkAStarElt (structure BaseElt : ELEMENT) =
struct
  structure EdgeElt = MkPairElt(structure EltA = BaseElt
                                structure EltB = BaseElt)
  structure EdgeSeqElt = MkSeqElt(structure Elt = EdgeElt
                                  structure Seq = ArraySequence)
  structure EdgeSeqVertElt = MkPairElt(structure EltA = EdgeSeqElt
                                       structure EltB = BaseElt)
  structure BaseSeqElt = MkSeqElt(structure Elt = BaseElt
                                 structure Seq = ArraySequence)
  structure StringPairElt = MkPairElt(structure EltA = StringElt
                                      structure EltB = StringElt)
  structure StringSeqElt = MkSeqElt(structure Elt = StringElt
                                    structure Seq = ArraySequence)
  structure GraphSeqElt = MkSeqElt(structure Elt = BaseSeqElt
                                   structure Seq = ArraySequence)

  structure SeqPairElt = MkPairElt(structure EltA = BaseSeqElt
                                   structure EltB = BaseSeqElt)
  structure WeightedEdgeElt = MkTripleElt(structure EltA = BaseElt
                                   structure EltB = BaseElt
                                   structure EltC = RealElt)
  structure WeightedEdgeSeqElt = MkSeqElt(structure Elt = WeightedEdgeElt
                                   structure Seq = ArraySequence)
  structure AStarElt = MkTripleElt(structure EltA = WeightedEdgeSeqElt
                                structure EltB = SeqPairElt
                                structure EltC = UnitElt)
  structure AStarSeqElt = MkSeqElt(structure Elt = AStarElt
                                   structure Seq = ArraySequence)

end