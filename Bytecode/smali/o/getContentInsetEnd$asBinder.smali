.class final Lo/getContentInsetEnd$asBinder;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/zzb;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/getContentInsetEnd;->onPostMessage(Lcom/dreamplug/androidapp/login/LoginUiModel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "",
        "kotlin.jvm.PlatformType",
        "checkAndDismissKeyBoard"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field public static final ICustomTabsCallback:Lo/getContentInsetEnd$asBinder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lo/getContentInsetEnd$asBinder;

    invoke-direct {v0}, Lo/getContentInsetEnd$asBinder;-><init>()V

    sput-object v0, Lo/getContentInsetEnd$asBinder;->ICustomTabsCallback:Lo/getContentInsetEnd$asBinder;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final extraCallback()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
