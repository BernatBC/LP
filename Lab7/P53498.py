from functools import reduce

class Tree:
    def __init__(self, x):
        self.rt = x
        self.child = []
 
    def addChild(self, a):
        self.child.append(a)
 
    def root(self):
        return self.rt
 
    def ithChild(self, i):
        return self.child[i]

    def num_children(self):
        return len(self.child)
    
    def __iter__(self):
        yield self.root()
        for j in self.child:
            for k in range(0, j.num_children()):
                self.child.append(j.ithChild(k))
            yield j.root()

class Pre(Tree):
    def preorder(self):
        L = [self.root()]
        for k in self.child:
            L += k.preorder()
        return L