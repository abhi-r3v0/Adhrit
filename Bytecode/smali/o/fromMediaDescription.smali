.class public Lo/fromMediaDescription;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/fromMediaDescription$ICustomTabsCallback;,
        Lo/fromMediaDescription$onNavigationEvent;
    }
.end annotation


# instance fields
.field public onNavigationEvent:Lo/fromMediaDescription$onNavigationEvent;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 199
    invoke-direct {p0, v0}, Lo/fromMediaDescription;-><init>(B)V

    return-void
.end method

.method private constructor <init>(B)V
    .locals 1

    .line 212
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 213
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x18

    if-lt p1, v0, :cond_0

    .line 214
    new-instance p1, Lo/fromMediaDescription$ICustomTabsCallback;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Lo/fromMediaDescription$ICustomTabsCallback;-><init>(I)V

    iput-object p1, p0, Lo/fromMediaDescription;->onNavigationEvent:Lo/fromMediaDescription$onNavigationEvent;

    return-void

    .line 216
    :cond_0
    new-instance p1, Lo/fromMediaDescription$onNavigationEvent;

    invoke-direct {p1}, Lo/fromMediaDescription$onNavigationEvent;-><init>()V

    iput-object p1, p0, Lo/fromMediaDescription;->onNavigationEvent:Lo/fromMediaDescription$onNavigationEvent;

    return-void
.end method
