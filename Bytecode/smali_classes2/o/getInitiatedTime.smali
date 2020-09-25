.class final Lo/getInitiatedTime;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lo/setMandatory;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 4

    .line 2
    check-cast p1, Lo/setMandatory;

    check-cast p2, Lo/setMandatory;

    .line 3
    invoke-virtual {p1}, Lo/setMandatory;->iterator()Ljava/util/Iterator;

    move-result-object v0

    check-cast v0, Lo/FCLocale;

    .line 4
    invoke-virtual {p2}, Lo/setMandatory;->iterator()Ljava/util/Iterator;

    move-result-object v1

    check-cast v1, Lo/FCLocale;

    .line 5
    :cond_0
    invoke-interface {v0}, Lo/FCLocale;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Lo/FCLocale;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 7
    invoke-interface {v0}, Lo/FCLocale;->onMessageChannelReady()B

    move-result v2

    invoke-static {v2}, Lo/setMandatory;->onNavigationEvent(B)I

    move-result v2

    invoke-interface {v1}, Lo/FCLocale;->onMessageChannelReady()B

    move-result v3

    invoke-static {v3}, Lo/setMandatory;->onNavigationEvent(B)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Integer;->compare(II)I

    move-result v2

    if-eqz v2, :cond_0

    return v2

    .line 11
    :cond_1
    invoke-virtual {p1}, Lo/setMandatory;->onPostMessage()I

    move-result p1

    invoke-virtual {p2}, Lo/setMandatory;->onPostMessage()I

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Integer;->compare(II)I

    move-result p1

    return p1
.end method
