.class final Lo/oppositeColor$2;
.super Ljava/util/ArrayDeque;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/oppositeColor;-><init>(Lo/buildAncestorWhereClause;IJLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayDeque<",
        "Lo/serializeObject$onMessageChannelReady$onPostMessage;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic extraCallback:I

.field private synthetic onNavigationEvent:Lo/oppositeColor;


# direct methods
.method constructor <init>(Lo/oppositeColor;I)V
    .locals 0

    .line 67
    iput-object p1, p0, Lo/oppositeColor$2;->onNavigationEvent:Lo/oppositeColor;

    iput p2, p0, Lo/oppositeColor$2;->extraCallback:I

    invoke-direct {p0}, Ljava/util/ArrayDeque;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic add(Ljava/lang/Object;)Z
    .locals 2

    .line 67
    check-cast p1, Lo/serializeObject$onMessageChannelReady$onPostMessage;

    .line 1071
    invoke-virtual {p0}, Lo/oppositeColor$2;->size()I

    move-result v0

    iget v1, p0, Lo/oppositeColor$2;->extraCallback:I

    if-ne v0, v1, :cond_0

    .line 1072
    invoke-virtual {p0}, Lo/oppositeColor$2;->removeFirst()Ljava/lang/Object;

    .line 1074
    :cond_0
    iget-object v0, p0, Lo/oppositeColor$2;->onNavigationEvent:Lo/oppositeColor;

    invoke-static {v0}, Lo/oppositeColor;->ICustomTabsCallback(Lo/oppositeColor;)I

    .line 1075
    invoke-super {p0, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
