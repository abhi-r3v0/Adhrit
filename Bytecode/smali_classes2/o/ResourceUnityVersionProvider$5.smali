.class final Lo/ResourceUnityVersionProvider$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/ResourceUnityVersionProvider;->onPostMessage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic ICustomTabsCallback:Lo/ResourceUnityVersionProvider;


# direct methods
.method constructor <init>(Lo/ResourceUnityVersionProvider;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lo/ResourceUnityVersionProvider$5;->ICustomTabsCallback:Lo/ResourceUnityVersionProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 88
    iget-object v0, p0, Lo/ResourceUnityVersionProvider$5;->ICustomTabsCallback:Lo/ResourceUnityVersionProvider;

    .line 1023
    invoke-virtual {v0}, Lo/ResourceUnityVersionProvider;->onNavigationEvent()V

    return-void
.end method
