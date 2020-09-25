.class public interface abstract Lo/setLog;
.super Ljava/lang/Object;
.source ""


# virtual methods
.method public abstract forEachOrphanedDocumentSequenceNumber(Lo/from;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/from<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract forEachTarget(Lo/from;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/from<",
            "Lo/setBatteryVelocity;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getByteSize()J
.end method

.method public abstract getGarbageCollector()Lo/getExecution;
.end method

.method public abstract getSequenceNumberCount()J
.end method

.method public abstract removeOrphanedDocuments(J)I
.end method

.method public abstract removeTargets(JLandroid/util/SparseArray;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Landroid/util/SparseArray<",
            "*>;)I"
        }
    .end annotation
.end method
