.class final Lo/animateDisappearance$extraCallback$ICustomTabsCallback$Stub;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/onDisconnectSetValue;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/animateDisappearance$extraCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/access$1502;",
        "Lo/onDisconnectSetValue<",
        "Ljava/lang/Long;",
        "Lo/addWrites;",
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
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "",
        "invoke",
        "com/dreamplug/fabrik/ui/lifestyle/win/landing/WinGridViewHolder$InnerCardHolder$setTimer$1$1"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic onMessageChannelReady:Lo/animateDisappearance$extraCallback;

.field private synthetic onNavigationEvent:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/TimerConfig;

.field private synthetic onPostMessage:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lo/animateDisappearance$extraCallback;Landroid/widget/TextView;Lcom/dreamplug/fabrik/ui/lifestyle/win/network/TimerConfig;)V
    .locals 0

    iput-object p1, p0, Lo/animateDisappearance$extraCallback$ICustomTabsCallback$Stub;->onMessageChannelReady:Lo/animateDisappearance$extraCallback;

    iput-object p2, p0, Lo/animateDisappearance$extraCallback$ICustomTabsCallback$Stub;->onPostMessage:Landroid/widget/TextView;

    iput-object p3, p0, Lo/animateDisappearance$extraCallback$ICustomTabsCallback$Stub;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/TimerConfig;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    .line 112
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    .line 1247
    iget-object p1, p0, Lo/animateDisappearance$extraCallback$ICustomTabsCallback$Stub;->onMessageChannelReady:Lo/animateDisappearance$extraCallback;

    iget-object v2, p0, Lo/animateDisappearance$extraCallback$ICustomTabsCallback$Stub;->onPostMessage:Landroid/widget/TextView;

    iget-object v3, p0, Lo/animateDisappearance$extraCallback$ICustomTabsCallback$Stub;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/TimerConfig;

    .line 2111
    iget-object v3, v3, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/TimerConfig;->onRelationshipValidationResult:Ljava/lang/String;

    const-wide/16 v4, 0x3e8

    .line 3063
    div-long/2addr v0, v4

    const-wide/16 v4, 0x3c

    .line 4051
    div-long v6, v0, v4

    .line 5039
    div-long v8, v6, v4

    const-wide/16 v10, 0x18

    .line 6027
    div-long v10, v8, v10

    mul-long v12, v8, v4

    sub-long/2addr v6, v12

    mul-long v12, v12, v4

    sub-long/2addr v0, v12

    mul-long v4, v4, v6

    sub-long/2addr v0, v4

    .line 2269
    iget-wide v4, p1, Lo/animateDisappearance$extraCallback;->getInterfaceDescriptor:J

    cmp-long v12, v8, v4

    if-gtz v12, :cond_0

    .line 2270
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p1, Lo/animateDisappearance$extraCallback;->ICustomTabsCallback$Stub$Proxy:Ljava/text/DecimalFormat;

    invoke-virtual {v5, v8, v9}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v5, 0x3a

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v8, p1, Lo/animateDisappearance$extraCallback;->ICustomTabsCallback$Stub$Proxy:Ljava/text/DecimalFormat;

    invoke-virtual {v8, v6, v7}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lo/animateDisappearance$extraCallback;->ICustomTabsCallback$Stub$Proxy:Ljava/text/DecimalFormat;

    invoke-virtual {p1, v0, v1}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 2272
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " days"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2274
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v3, :cond_2

    if-eqz v3, :cond_1

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v3}, Lo/childWrites;->onMessageChannelReady(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type kotlin.CharSequence"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    sget-object p1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object p1
.end method
