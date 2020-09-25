.class final Lo/getCacheDuration$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/Settings$ICustomTabsCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/getCacheDuration;->onNavigationEvent(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic ICustomTabsCallback:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 130
    iput-object p1, p0, Lo/getCacheDuration$3;->ICustomTabsCallback:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onNavigationEvent(Lo/Settings;)V
    .locals 1

    .line 2206
    iget-object p1, p1, Lo/Settings;->ICustomTabsCallback:Lo/Settings$extraCallback;

    .line 133
    iget-object v0, p0, Lo/getCacheDuration$3;->ICustomTabsCallback:Ljava/lang/String;

    invoke-interface {p1, v0}, Lo/Settings$onMessageChannelReady;->extraCallback(Ljava/lang/String;)V

    return-void
.end method
