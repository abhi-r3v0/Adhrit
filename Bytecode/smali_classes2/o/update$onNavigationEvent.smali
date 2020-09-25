.class public final Lo/update$onNavigationEvent;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/update;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "onNavigationEvent"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/update$onNavigationEvent$onMessageChannelReady;
    }
.end annotation


# instance fields
.field public final ICustomTabsCallback:Lo/update$onPostMessage;

.field public final extraCallback:Ljava/lang/String;

.field public final onMessageChannelReady:Z

.field public final onNavigationEvent:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Lo/update$onPostMessage;Z)V
    .locals 0

    .line 337
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 338
    iput-object p1, p0, Lo/update$onNavigationEvent;->onNavigationEvent:Landroid/content/Context;

    .line 339
    iput-object p2, p0, Lo/update$onNavigationEvent;->extraCallback:Ljava/lang/String;

    .line 340
    iput-object p3, p0, Lo/update$onNavigationEvent;->ICustomTabsCallback:Lo/update$onPostMessage;

    .line 341
    iput-boolean p4, p0, Lo/update$onNavigationEvent;->onMessageChannelReady:Z

    return-void
.end method
