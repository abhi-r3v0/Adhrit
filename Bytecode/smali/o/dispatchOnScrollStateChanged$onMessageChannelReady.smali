.class public final Lo/dispatchOnScrollStateChanged$onMessageChannelReady;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/dispatchOnScrollStateChanged;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onMessageChannelReady"
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0007J\u000e\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/lifestyle/win/ticket/TicketMachineFragment$Companion;",
        "",
        "()V",
        "newInstance",
        "Lcom/dreamplug/fabrik/ui/lifestyle/win/ticket/TicketMachineFragment;",
        "winTicketData",
        "Lcom/dreamplug/fabrik/ui/lifestyle/win/ticket/TicketMachineFragment$WinTicketData;",
        "ticketColor",
        "",
        "position",
        "",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 677
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(B)V
    .locals 0

    .line 677
    invoke-direct {p0}, Lo/dispatchOnScrollStateChanged$onMessageChannelReady;-><init>()V

    return-void
.end method

.method public static ICustomTabsCallback(Lo/dispatchOnScrollStateChanged$ICustomTabsCallback;)Lo/dispatchOnScrollStateChanged;
    .locals 3

    const-string/jumbo v0, "winTicketData"

    invoke-static {p0, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 680
    new-instance v0, Lo/dispatchOnScrollStateChanged;

    invoke-direct {v0}, Lo/dispatchOnScrollStateChanged;-><init>()V

    .line 681
    move-object v1, v0

    check-cast v1, Landroidx/fragment/app/Fragment;

    check-cast p0, Landroid/os/Parcelable;

    const-string v2, "extra"

    .line 1016
    invoke-static {v1, p0, v2}, Lo/extraCallback;->onMessageChannelReady(Landroidx/fragment/app/Fragment;Landroid/os/Parcelable;Ljava/lang/String;)V

    return-object v0
.end method

.method public static extraCallback(I)Ljava/lang/String;
    .locals 0

    .line 685
    rem-int/lit8 p0, p0, 0xa

    packed-switch p0, :pswitch_data_0

    const-string p0, "#B48B3F"

    return-object p0

    :pswitch_0
    const-string p0, "#EFB100"

    return-object p0

    :pswitch_1
    const-string p0, "#EA9135"

    return-object p0

    :pswitch_2
    const-string p0, "#D45A52"

    return-object p0

    :pswitch_3
    const-string p0, "#E3618E"

    return-object p0

    :pswitch_4
    const-string p0, "#AC64A5"

    return-object p0

    :pswitch_5
    const-string p0, "#4B8AC5"

    return-object p0

    :pswitch_6
    const-string p0, "#2DB7C6"

    return-object p0

    :pswitch_7
    const-string p0, "#25C694"

    return-object p0

    :pswitch_8
    const-string p0, "#73C45F"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
