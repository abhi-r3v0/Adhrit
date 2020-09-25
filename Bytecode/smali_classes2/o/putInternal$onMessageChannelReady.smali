.class public final Lo/putInternal$onMessageChannelReady;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/putInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onMessageChannelReady"
.end annotation


# instance fields
.field public final onNavigationEvent:Lo/sendUnauth;


# direct methods
.method public constructor <init>(Lo/sendUnauth;)V
    .locals 0

    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 164
    iput-object p1, p0, Lo/putInternal$onMessageChannelReady;->onNavigationEvent:Lo/sendUnauth;

    return-void
.end method
