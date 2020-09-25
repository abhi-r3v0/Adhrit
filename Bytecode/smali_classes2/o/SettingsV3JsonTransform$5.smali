.class final Lo/SettingsV3JsonTransform$5;
.super Ljava/util/TimerTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/SettingsV3JsonTransform;->ICustomTabsCallback()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic extraCallback:Lo/SettingsV3JsonTransform;


# direct methods
.method constructor <init>(Lo/SettingsV3JsonTransform;)V
    .locals 0

    .line 145
    iput-object p1, p0, Lo/SettingsV3JsonTransform$5;->extraCallback:Lo/SettingsV3JsonTransform;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 148
    iget-object v0, p0, Lo/SettingsV3JsonTransform$5;->extraCallback:Lo/SettingsV3JsonTransform;

    invoke-virtual {v0}, Lo/SettingsV3JsonTransform;->onNavigationEvent()V

    return-void
.end method
