.class public final Lo/minPost;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/processLeaf;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPostMessage(Ljava/lang/String;)Lo/currentHashLength;
    .locals 0

    .line 45
    sget-object p1, Lo/finishHashing;->onPostMessage:Lo/finishHashing;

    return-object p1
.end method
