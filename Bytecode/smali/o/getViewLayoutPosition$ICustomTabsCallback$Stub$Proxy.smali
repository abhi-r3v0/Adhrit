.class final Lo/getViewLayoutPosition$ICustomTabsCallback$Stub$Proxy;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/material/appbar/AppBarLayout$onNavigationEvent;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/getViewLayoutPosition;-><init>()V
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
        "\u0000\u0016\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u00032\u0006\u0010\u0005\u001a\u00020\u0006H\n\u00a2\u0006\u0002\u0008\u0007"
    }
    d2 = {
        "<anonymous>",
        "",
        "appBarLayout",
        "Lcom/google/android/material/appbar/AppBarLayout;",
        "kotlin.jvm.PlatformType",
        "verticalOffset",
        "",
        "onOffsetChanged"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field public static final onNavigationEvent:Lo/getViewLayoutPosition$ICustomTabsCallback$Stub$Proxy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lo/getViewLayoutPosition$ICustomTabsCallback$Stub$Proxy;

    invoke-direct {v0}, Lo/getViewLayoutPosition$ICustomTabsCallback$Stub$Proxy;-><init>()V

    sput-object v0, Lo/getViewLayoutPosition$ICustomTabsCallback$Stub$Proxy;->onNavigationEvent:Lo/getViewLayoutPosition$ICustomTabsCallback$Stub$Proxy;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Lcom/google/android/material/appbar/AppBarLayout;I)V
    .locals 1

    .line 228
    sget-object v0, Lo/getTextOff;->onNavigationEvent:Lo/getTextOff;

    int-to-float p2, p2

    const-string v0, "appBarLayout"

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p2, p1

    invoke-static {p2}, Lo/getTextOff;->extraCallback(F)V

    return-void
.end method
