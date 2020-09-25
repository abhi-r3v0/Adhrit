.class final Lo/MediaDescriptionCompat$1$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/MediaDescriptionCompat$1;->ICustomTabsCallback(Landroid/app/Activity;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ICustomTabsCallback:Lo/MediaDescriptionCompat$1$onPostMessage;

.field final synthetic onPostMessage:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lo/MediaDescriptionCompat$1$onPostMessage;Ljava/lang/Object;)V
    .locals 0

    .line 142
    iput-object p1, p0, Lo/MediaDescriptionCompat$1$4;->ICustomTabsCallback:Lo/MediaDescriptionCompat$1$onPostMessage;

    iput-object p2, p0, Lo/MediaDescriptionCompat$1$4;->onPostMessage:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 145
    iget-object v0, p0, Lo/MediaDescriptionCompat$1$4;->ICustomTabsCallback:Lo/MediaDescriptionCompat$1$onPostMessage;

    iget-object v1, p0, Lo/MediaDescriptionCompat$1$4;->onPostMessage:Ljava/lang/Object;

    iput-object v1, v0, Lo/MediaDescriptionCompat$1$onPostMessage;->onPostMessage:Ljava/lang/Object;

    return-void
.end method
