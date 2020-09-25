.class public Lo/AppsFlyerLibCore$2;
.super Lo/onBecameBackground;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/AppsFlyerLibCore$2$extraCallback;,
        Lo/AppsFlyerLibCore$2$ICustomTabsCallback;
    }
.end annotation


# instance fields
.field protected final ICustomTabsCallback:Ljava/lang/String;

.field protected final onNavigationEvent:Ljava/io/File;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1, p2}, Lo/onBecameBackground;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 50
    iput-object p3, p0, Lo/AppsFlyerLibCore$2;->onNavigationEvent:Ljava/io/File;

    .line 51
    iput-object p4, p0, Lo/AppsFlyerLibCore$2;->ICustomTabsCallback:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected onMessageChannelReady()Lo/onBecameBackground$onNavigationEvent;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 56
    new-instance v0, Lo/AppsFlyerLibCore$2$ICustomTabsCallback;

    invoke-direct {v0, p0, p0}, Lo/AppsFlyerLibCore$2$ICustomTabsCallback;-><init>(Lo/AppsFlyerLibCore$2;Lo/onBecameBackground;)V

    return-object v0
.end method
