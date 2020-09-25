.class public final Lo/run$onMessageChannelReady;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/run;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "onMessageChannelReady"
.end annotation


# instance fields
.field private final onNavigationEvent:Lo/run$onPostMessage;


# direct methods
.method public constructor <init>(Lo/run$onPostMessage;)V
    .locals 0

    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 174
    iput-object p1, p0, Lo/run$onMessageChannelReady;->onNavigationEvent:Lo/run$onPostMessage;

    return-void
.end method
