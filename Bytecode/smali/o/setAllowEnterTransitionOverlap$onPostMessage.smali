.class public final Lo/setAllowEnterTransitionOverlap$onPostMessage;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/setAllowEnterTransitionOverlap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onPostMessage"
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J&\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0016\u0008\u0002\u0010\u0007\u001a\u0010\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\n\u0018\u00010\u0008\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/cm/CardFilterSelectDialog$Companion;",
        "",
        "()V",
        "newInstance",
        "Lcom/dreamplug/fabrik/ui/cm/CardFilterSelectDialog;",
        "extra",
        "Lcom/dreamplug/fabrik/ui/cm/CardFilterSelectDialog$Extra;",
        "invokeClick",
        "Lkotlin/Function1;",
        "Lcom/dreamplug/fabrik/ui/cm/models/Template;",
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

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(B)V
    .locals 0

    .line 77
    invoke-direct {p0}, Lo/setAllowEnterTransitionOverlap$onPostMessage;-><init>()V

    return-void
.end method

.method public static extraCallback(Lo/setAllowEnterTransitionOverlap$extraCallback;Lo/onDisconnectSetValue;)Lo/setAllowEnterTransitionOverlap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/setAllowEnterTransitionOverlap$extraCallback;",
            "Lo/onDisconnectSetValue<",
            "-",
            "Lcom/dreamplug/fabrik/ui/cm/models/Template;",
            "Lo/addWrites;",
            ">;)",
            "Lo/setAllowEnterTransitionOverlap;"
        }
    .end annotation

    const-string v0, "extra"

    invoke-static {p0, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    new-instance v1, Lo/setAllowEnterTransitionOverlap;

    invoke-direct {v1}, Lo/setAllowEnterTransitionOverlap;-><init>()V

    .line 80
    move-object v2, v1

    check-cast v2, Landroidx/fragment/app/Fragment;

    check-cast p0, Landroid/os/Parcelable;

    .line 1016
    invoke-static {v2, p0, v0}, Lo/extraCallback;->onMessageChannelReady(Landroidx/fragment/app/Fragment;Landroid/os/Parcelable;Ljava/lang/String;)V

    .line 81
    invoke-static {v1, p1}, Lo/setAllowEnterTransitionOverlap;->extraCallback(Lo/setAllowEnterTransitionOverlap;Lo/onDisconnectSetValue;)V

    return-object v1
.end method
