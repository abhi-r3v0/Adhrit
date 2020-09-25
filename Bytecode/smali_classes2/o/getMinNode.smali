.class public final Lo/getMinNode;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final ICustomTabsCallback:Lo/getChildKey;

.field public final extraCallback:Lo/childAddedChange;

.field public final onMessageChannelReady:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lo/childAddedChange;Ljava/lang/Object;Lo/getChildKey;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/childAddedChange;",
            "TT;",
            "Lo/getChildKey;",
            ")V"
        }
    .end annotation

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    iput-object p1, p0, Lo/getMinNode;->extraCallback:Lo/childAddedChange;

    .line 96
    iput-object p2, p0, Lo/getMinNode;->onMessageChannelReady:Ljava/lang/Object;

    .line 97
    iput-object p3, p0, Lo/getMinNode;->ICustomTabsCallback:Lo/getChildKey;

    return-void
.end method

.method public static ICustomTabsCallback(Lo/getChildKey;Lo/childAddedChange;)Lo/getMinNode;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lo/getChildKey;",
            "Lo/childAddedChange;",
            ")",
            "Lo/getMinNode<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "body == null"

    .line 81
    invoke-static {p0, v0}, Lo/nameAndPriorityCompare;->extraCallback(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "rawResponse == null"

    .line 82
    invoke-static {p1, v0}, Lo/nameAndPriorityCompare;->extraCallback(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2106
    iget v0, p1, Lo/childAddedChange;->onNavigationEvent:I

    const/16 v1, 0xc8

    if-lt v0, v1, :cond_0

    iget v0, p1, Lo/childAddedChange;->onNavigationEvent:I

    const/16 v1, 0x12c

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 86
    new-instance v0, Lo/getMinNode;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, p0}, Lo/getMinNode;-><init>(Lo/childAddedChange;Ljava/lang/Object;Lo/getChildKey;)V

    return-object v0

    .line 84
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "rawResponse should not be successful response"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static onNavigationEvent(Ljava/lang/Object;Lo/childAddedChange;)Lo/getMinNode;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lo/childAddedChange;",
            ")",
            "Lo/getMinNode<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "rawResponse == null"

    .line 58
    invoke-static {p1, v0}, Lo/nameAndPriorityCompare;->extraCallback(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1106
    iget v0, p1, Lo/childAddedChange;->onNavigationEvent:I

    const/16 v1, 0xc8

    if-lt v0, v1, :cond_0

    iget v0, p1, Lo/childAddedChange;->onNavigationEvent:I

    const/16 v1, 0x12c

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 62
    new-instance v0, Lo/getMinNode;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p0, v1}, Lo/getMinNode;-><init>(Lo/childAddedChange;Ljava/lang/Object;Lo/getChildKey;)V

    return-object v0

    .line 60
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "rawResponse must be successful response"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    .line 136
    iget-object v0, p0, Lo/getMinNode;->extraCallback:Lo/childAddedChange;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
