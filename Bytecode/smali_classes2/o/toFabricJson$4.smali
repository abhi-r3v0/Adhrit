.class final Lo/toFabricJson$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/Settings$ICustomTabsCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/toFabricJson;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onNavigationEvent(Lo/Settings;)V
    .locals 0

    .line 48
    invoke-virtual {p1}, Lo/Settings;->onPostMessage()V

    return-void
.end method
