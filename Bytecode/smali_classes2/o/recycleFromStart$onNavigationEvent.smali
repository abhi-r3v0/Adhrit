.class public final Lo/recycleFromStart$onNavigationEvent;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/recycleFromStart;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00001\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\r\n\u0002\u0008\u0006*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0012\u0010\u000e\u001a\u00020\u000f2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0016J(\u0010\u0012\u001a\u00020\u000f2\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\t2\u0006\u0010\u0016\u001a\u00020\t2\u0006\u0010\u0017\u001a\u00020\tH\u0016J(\u0010\u0018\u001a\u00020\u000f2\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\t2\u0006\u0010\u0019\u001a\u00020\t2\u0006\u0010\u0016\u001a\u00020\tH\u0016R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0004\u0010\u0005\"\u0004\u0008\u0006\u0010\u0007R\u001a\u0010\u0008\u001a\u00020\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u000b\"\u0004\u0008\u000c\u0010\r\u00a8\u0006\u001a"
    }
    d2 = {
        "com/dreamplug/widget/PatternEditText$init$1",
        "Landroid/text/TextWatcher;",
        "beforeText",
        "",
        "getBeforeText",
        "()Ljava/lang/String;",
        "setBeforeText",
        "(Ljava/lang/String;)V",
        "spaceRemovedIndex",
        "",
        "getSpaceRemovedIndex",
        "()I",
        "setSpaceRemovedIndex",
        "(I)V",
        "afterTextChanged",
        "",
        "editable",
        "Landroid/text/Editable;",
        "beforeTextChanged",
        "s",
        "",
        "start",
        "count",
        "after",
        "onTextChanged",
        "before",
        "widget_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private extraCallback:I

.field private synthetic onNavigationEvent:Lo/recycleFromStart;

.field private onPostMessage:Ljava/lang/String;


# direct methods
.method constructor <init>(Lo/recycleFromStart;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 29
    iput-object p1, p0, Lo/recycleFromStart$onNavigationEvent;->onNavigationEvent:Lo/recycleFromStart;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    .line 31
    iput p1, p0, Lo/recycleFromStart$onNavigationEvent;->extraCallback:I

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    .line 34
    iget-object v0, p0, Lo/recycleFromStart$onNavigationEvent;->onNavigationEvent:Lo/recycleFromStart;

    iget v1, p0, Lo/recycleFromStart$onNavigationEvent;->extraCallback:I

    invoke-static {v0, p1, v1}, Lo/recycleFromStart;->onNavigationEvent(Lo/recycleFromStart;Landroid/text/Editable;I)V

    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    const-string p2, "s"

    invoke-static {p1, p2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lo/recycleFromStart$onNavigationEvent;->onPostMessage:Ljava/lang/String;

    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 4

    const-string p3, "s"

    invoke-static {p1, p3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p3

    const/4 p4, 0x1

    add-int/2addr p3, p4

    iget-object v0, p0, Lo/recycleFromStart$onNavigationEvent;->onPostMessage:Ljava/lang/String;

    const-string v1, "beforeText"

    if-nez v0, :cond_0

    invoke-static {v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ne p3, v0, :cond_7

    .line 43
    iget-object p3, p0, Lo/recycleFromStart$onNavigationEvent;->onPostMessage:Ljava/lang/String;

    if-nez p3, :cond_1

    invoke-static {v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_1
    const/4 v0, 0x0

    invoke-interface {p1, v0, p2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "$this$startsWith"

    .line 1332
    invoke-static {p3, v3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "prefix"

    invoke-static {v2, v3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1334
    invoke-virtual {p3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_7

    .line 44
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p3

    invoke-interface {p1, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    check-cast p3, Ljava/lang/CharSequence;

    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result p3

    if-lez p3, :cond_2

    goto :goto_0

    :cond_2
    const/4 p4, 0x0

    :goto_0
    if-eqz p4, :cond_7

    .line 45
    iget-object p3, p0, Lo/recycleFromStart$onNavigationEvent;->onPostMessage:Ljava/lang/String;

    if-nez p3, :cond_3

    invoke-static {v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_3
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p4

    invoke-interface {p1, p2, p4}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p4, "$this$endsWith"

    .line 1354
    invoke-static {p3, p4}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "suffix"

    invoke-static {p1, p4}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1356
    invoke-virtual {p3, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 46
    iget-object p1, p0, Lo/recycleFromStart$onNavigationEvent;->onPostMessage:Ljava/lang/String;

    if-nez p1, :cond_4

    invoke-static {v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_4
    add-int/lit8 p3, p2, 0x1

    const-string p4, "null cannot be cast to non-null type java.lang.String"

    if-eqz p1, :cond_6

    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    const-string v0, "(this as java.lang.Strin\u2026ing(startIndex, endIndex)"

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lo/recycleFromStart$onNavigationEvent;->onNavigationEvent:Lo/recycleFromStart;

    .line 2075
    iget-char v1, v1, Lo/recycleFromStart;->ICustomTabsCallback:C

    .line 46
    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 47
    iget-object p1, p0, Lo/recycleFromStart$onNavigationEvent;->onNavigationEvent:Lo/recycleFromStart;

    .line 3061
    iget-object p1, p1, Lo/recycleFromStart;->extraCallback:Ljava/lang/String;

    if-eqz p1, :cond_5

    .line 47
    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "-"

    invoke-static {p1, p3}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 50
    iput p2, p0, Lo/recycleFromStart$onNavigationEvent;->extraCallback:I

    return-void

    .line 47
    :cond_5
    new-instance p1, Lkotlin/TypeCastException;

    invoke-direct {p1, p4}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 46
    :cond_6
    new-instance p1, Lkotlin/TypeCastException;

    invoke-direct {p1, p4}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    const/4 p1, -0x1

    .line 52
    iput p1, p0, Lo/recycleFromStart$onNavigationEvent;->extraCallback:I

    return-void
.end method
