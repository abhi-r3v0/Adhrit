.class final Lo/Settings$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/DefaultSettingsSpiCall$onMessageChannelReady;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic extraCallback:Lo/Settings;


# direct methods
.method constructor <init>(Lo/Settings;)V
    .locals 0

    .line 2016
    iput-object p1, p0, Lo/Settings$5;->extraCallback:Lo/Settings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onMessageChannelReady(Landroid/content/SharedPreferences;)V
    .locals 1

    .line 2019
    invoke-static {p1}, Lo/AppSpiCall;->onNavigationEvent(Landroid/content/SharedPreferences;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2021
    iget-object v0, p0, Lo/Settings$5;->extraCallback:Lo/Settings;

    invoke-static {v0, p1}, Lo/Settings;->ICustomTabsCallback(Lo/Settings;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
