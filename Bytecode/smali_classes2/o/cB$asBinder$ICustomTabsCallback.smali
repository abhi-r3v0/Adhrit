.class public final Lo/cB$asBinder$ICustomTabsCallback;
.super Lo/fa$onNavigationEvent;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/cB$asBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ICustomTabsCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/fa$onNavigationEvent<",
        "Lo/cB$asBinder;",
        "Lo/cB$asBinder$ICustomTabsCallback;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-static {}, Lo/cB$asBinder;->onTransact()Lo/cB$asBinder;

    move-result-object v0

    invoke-direct {p0, v0}, Lo/fa$onNavigationEvent;-><init>(Lo/fa;)V

    return-void
.end method

.method synthetic constructor <init>(Lo/f$a;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lo/cB$asBinder$ICustomTabsCallback;-><init>()V

    return-void
.end method
