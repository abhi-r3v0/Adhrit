.class public interface abstract Lo/LogFileManager$DirectoryProvider;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Comparable;
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/LogFileManager$DirectoryProvider$onMessageChannelReady;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lo/LogFileManager$DirectoryProvider;",
        ">;",
        "Ljava/lang/Iterable<",
        "Lo/QueueFile;",
        ">;"
    }
.end annotation


# static fields
.field public static final MAX_NODE:Lo/setCurrentSession;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 63
    new-instance v0, Lo/LogFileManager$DirectoryProvider$3;

    invoke-direct {v0}, Lo/LogFileManager$DirectoryProvider$3;-><init>()V

    sput-object v0, Lo/LogFileManager$DirectoryProvider;->MAX_NODE:Lo/setCurrentSession;

    return-void
.end method


# virtual methods
.method public abstract getChild(Lo/ExecutorUtils$2;)Lo/LogFileManager$DirectoryProvider;
.end method

.method public abstract getChildCount()I
.end method

.method public abstract getHash()Ljava/lang/String;
.end method

.method public abstract getHashRepresentation(Lo/LogFileManager$DirectoryProvider$onMessageChannelReady;)Ljava/lang/String;
.end method

.method public abstract getImmediateChild(Lo/LogFileManager;)Lo/LogFileManager$DirectoryProvider;
.end method

.method public abstract getPredecessorChildKey(Lo/LogFileManager;)Lo/LogFileManager;
.end method

.method public abstract getPriority()Lo/LogFileManager$DirectoryProvider;
.end method

.method public abstract getSuccessorChildKey(Lo/LogFileManager;)Lo/LogFileManager;
.end method

.method public abstract getValue()Ljava/lang/Object;
.end method

.method public abstract getValue(Z)Ljava/lang/Object;
.end method

.method public abstract hasChild(Lo/LogFileManager;)Z
.end method

.method public abstract isEmpty()Z
.end method

.method public abstract isLeafNode()Z
.end method

.method public abstract reverseIterator()Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lo/QueueFile;",
            ">;"
        }
    .end annotation
.end method

.method public abstract updateChild(Lo/ExecutorUtils$2;Lo/LogFileManager$DirectoryProvider;)Lo/LogFileManager$DirectoryProvider;
.end method

.method public abstract updateImmediateChild(Lo/LogFileManager;Lo/LogFileManager$DirectoryProvider;)Lo/LogFileManager$DirectoryProvider;
.end method

.method public abstract updatePriority(Lo/LogFileManager$DirectoryProvider;)Lo/LogFileManager$DirectoryProvider;
.end method
