.class public final Lo/removeEventCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/applyTaggedRangeMerges;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/removeEventCallback$extraCallback;,
        Lo/removeEventCallback$onNavigationEvent;,
        Lo/removeEventCallback$onMessageChannelReady;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/applyTaggedRangeMerges<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010(\n\u0002\u0008\u0006\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0003\u001a\u001b\u001cB\u0019\u0008\u0010\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006B\u0089\u0001\u0008\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u0012\u0014\u0010\u0007\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\t\u0018\u00010\u0008\u0012\u0014\u0010\n\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u000b\u0018\u00010\u0008\u00128\u0010\u000c\u001a4\u0012\u0013\u0012\u00110\u0002\u00a2\u0006\u000c\u0008\u000e\u0012\u0008\u0008\u000f\u0012\u0004\u0008\u0008(\u0010\u0012\u0013\u0012\u00110\u0011\u00a2\u0006\u000c\u0008\u000e\u0012\u0008\u0008\u000f\u0012\u0004\u0008\u0008(\u0012\u0012\u0004\u0012\u00020\u000b\u0018\u00010\r\u0012\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u0014\u00a2\u0006\u0002\u0010\u0015J\u000f\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0017H\u0096\u0002J\u000e\u0010\u0013\u001a\u00020\u00002\u0006\u0010\u0018\u001a\u00020\u0014J\u001a\u0010\u0007\u001a\u00020\u00002\u0012\u0010\u0019\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\t0\u0008J \u0010\u000c\u001a\u00020\u00002\u0018\u0010\u0019\u001a\u0014\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0011\u0012\u0004\u0012\u00020\u000b0\rJ\u001a\u0010\n\u001a\u00020\u00002\u0012\u0010\u0019\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u000b0\u0008R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0014X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u0007\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\t\u0018\u00010\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R@\u0010\u000c\u001a4\u0012\u0013\u0012\u00110\u0002\u00a2\u0006\u000c\u0008\u000e\u0012\u0008\u0008\u000f\u0012\u0004\u0008\u0008(\u0010\u0012\u0013\u0012\u00110\u0011\u00a2\u0006\u000c\u0008\u000e\u0012\u0008\u0008\u000f\u0012\u0004\u0008\u0008(\u0012\u0012\u0004\u0012\u00020\u000b\u0018\u00010\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001c\u0010\n\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u000b\u0018\u00010\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0003\u001a\u00020\u0002X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001d"
    }
    d2 = {
        "Lkotlin/io/FileTreeWalk;",
        "Lkotlin/sequences/Sequence;",
        "Ljava/io/File;",
        "start",
        "direction",
        "Lkotlin/io/FileWalkDirection;",
        "(Ljava/io/File;Lkotlin/io/FileWalkDirection;)V",
        "onEnter",
        "Lkotlin/Function1;",
        "",
        "onLeave",
        "",
        "onFail",
        "Lkotlin/Function2;",
        "Lkotlin/ParameterName;",
        "name",
        "f",
        "Ljava/io/IOException;",
        "e",
        "maxDepth",
        "",
        "(Ljava/io/File;Lkotlin/io/FileWalkDirection;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;I)V",
        "iterator",
        "",
        "depth",
        "function",
        "DirectoryState",
        "FileTreeWalkIterator",
        "WalkState",
        "kotlin-stdlib"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field final ICustomTabsCallback:Lo/onDisconnectSetValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/onDisconnectSetValue<",
            "Ljava/io/File;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field final extraCallback:Lo/onDisconnectSetValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/onDisconnectSetValue<",
            "Ljava/io/File;",
            "Lo/addWrites;",
            ">;"
        }
    .end annotation
.end field

.field final onMessageChannelReady:Ljava/io/File;

.field final onNavigationEvent:Lo/ackWriteAndRerunTransactions;

.field final onPostMessage:Lo/nextTransactionOrder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/nextTransactionOrder<",
            "Ljava/io/File;",
            "Ljava/io/IOException;",
            "Lo/addWrites;",
            ">;"
        }
    .end annotation
.end field

.field final onRelationshipValidationResult:I


# direct methods
.method public constructor <init>(Ljava/io/File;Lo/ackWriteAndRerunTransactions;)V
    .locals 1

    const-string v0, "start"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "direction"

    invoke-static {p2, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 46
    invoke-direct {p0, p1, p2, v0}, Lo/removeEventCallback;-><init>(Ljava/io/File;Lo/ackWriteAndRerunTransactions;B)V

    return-void
.end method

.method private synthetic constructor <init>(Ljava/io/File;Lo/ackWriteAndRerunTransactions;B)V
    .locals 7

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v6, 0x7fffffff

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 43
    invoke-direct/range {v0 .. v6}, Lo/removeEventCallback;-><init>(Ljava/io/File;Lo/ackWriteAndRerunTransactions;Lo/onDisconnectSetValue;Lo/onDisconnectSetValue;Lo/nextTransactionOrder;I)V

    return-void
.end method

.method private constructor <init>(Ljava/io/File;Lo/ackWriteAndRerunTransactions;Lo/onDisconnectSetValue;Lo/onDisconnectSetValue;Lo/nextTransactionOrder;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Lo/ackWriteAndRerunTransactions;",
            "Lo/onDisconnectSetValue<",
            "-",
            "Ljava/io/File;",
            "Ljava/lang/Boolean;",
            ">;",
            "Lo/onDisconnectSetValue<",
            "-",
            "Ljava/io/File;",
            "Lo/addWrites;",
            ">;",
            "Lo/nextTransactionOrder<",
            "-",
            "Ljava/io/File;",
            "-",
            "Ljava/io/IOException;",
            "Lo/addWrites;",
            ">;I)V"
        }
    .end annotation

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/removeEventCallback;->onMessageChannelReady:Ljava/io/File;

    iput-object p2, p0, Lo/removeEventCallback;->onNavigationEvent:Lo/ackWriteAndRerunTransactions;

    const/4 p1, 0x0

    iput-object p1, p0, Lo/removeEventCallback;->ICustomTabsCallback:Lo/onDisconnectSetValue;

    iput-object p1, p0, Lo/removeEventCallback;->extraCallback:Lo/onDisconnectSetValue;

    iput-object p1, p0, Lo/removeEventCallback;->onPostMessage:Lo/nextTransactionOrder;

    const p1, 0x7fffffff

    iput p1, p0, Lo/removeEventCallback;->onRelationshipValidationResult:I

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 50
    new-instance v0, Lo/removeEventCallback$onMessageChannelReady;

    invoke-direct {v0, p0}, Lo/removeEventCallback$onMessageChannelReady;-><init>(Lo/removeEventCallback;)V

    check-cast v0, Ljava/util/Iterator;

    return-object v0
.end method
