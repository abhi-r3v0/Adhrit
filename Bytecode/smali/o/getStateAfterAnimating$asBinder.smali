.class final synthetic Lo/getStateAfterAnimating$asBinder;
.super Lo/startListening;
.source ""

# interfaces
.implements Lo/onDisconnectSetValue;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/getStateAfterAnimating;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1018
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/startListening;",
        "Lo/onDisconnectSetValue<",
        "Landroid/view/View;",
        "Lo/ThemeUtils;",
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
        "\u0000\u0016\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0010\u0000\u001a\n \u0002*\u0004\u0018\u00010\u00010\u00012\u0015\u0010\u0003\u001a\u00110\u0004\u00a2\u0006\u000c\u0008\u0005\u0012\u0008\u0008\u0006\u0012\u0004\u0008\u0008(\u0007\u00a2\u0006\u0002\u0008\u0008"
    }
    d2 = {
        "<anonymous>",
        "Lcom/dreamplug/androidapp/databinding/FragmentCredProtectOptInBinding;",
        "kotlin.jvm.PlatformType",
        "p1",
        "Landroid/view/View;",
        "Lkotlin/ParameterName;",
        "name",
        "view",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field public static final onMessageChannelReady:Lo/getStateAfterAnimating$asBinder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lo/getStateAfterAnimating$asBinder;

    invoke-direct {v0}, Lo/getStateAfterAnimating$asBinder;-><init>()V

    sput-object v0, Lo/getStateAfterAnimating$asBinder;->onMessageChannelReady:Lo/getStateAfterAnimating$asBinder;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lo/startListening;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final extraCallback()Ljava/lang/String;
    .locals 1

    const-string v0, "bind"

    return-object v0
.end method

.method public final h_()Ljava/lang/String;
    .locals 1

    const-string v0, "bind(Landroid/view/View;)Lcom/dreamplug/androidapp/databinding/FragmentCredProtectOptInBinding;"

    return-object v0
.end method

.method public final synthetic onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 54
    check-cast p1, Landroid/view/View;

    const-string v0, "p1"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1057
    invoke-static {p1}, Lo/ThemeUtils;->extraCallback(Landroid/view/View;)Lo/ThemeUtils;

    move-result-object p1

    return-object p1
.end method

.method public final onNavigationEvent()Lo/getQueryViews;
    .locals 1

    const-class v0, Lo/ThemeUtils;

    invoke-static {v0}, Lo/applyEmulatorSettings;->ICustomTabsCallback(Ljava/lang/Class;)Lo/viewExistsForQuery;

    move-result-object v0

    return-object v0
.end method
