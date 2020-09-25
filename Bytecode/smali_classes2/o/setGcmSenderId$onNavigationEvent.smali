.class public final Lo/setGcmSenderId$onNavigationEvent;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/setGcmSenderId;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "onNavigationEvent"
.end annotation


# instance fields
.field public final extraCallback:Lo/setProjectId;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setProjectId<",
            "*>;"
        }
    .end annotation
.end field

.field public onNavigationEvent:Lo/setGcmSenderId;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lo/setProjectId;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lo/setProjectId<",
            "*>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lo/setGcmSenderId;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/setGcmSenderId;-><init>(B)V

    iput-object v0, p0, Lo/setGcmSenderId$onNavigationEvent;->onNavigationEvent:Lo/setGcmSenderId;

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 7
    iput-object p2, p0, Lo/setGcmSenderId$onNavigationEvent;->extraCallback:Lo/setProjectId;

    .line 1198
    iput-object p1, v0, Lo/setGcmSenderId;->onMessageChannelReady:Landroid/content/Context;

    return-void

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "No detector supplied."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "No context supplied."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
