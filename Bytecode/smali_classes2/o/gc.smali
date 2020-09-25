.class public Lo/gc;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/PictureAttachmentActivity$3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType::",
        "Lo/aD;",
        ">",
        "Ljava/lang/Object;",
        "Lo/PictureAttachmentActivity$3<",
        "TMessageType;>;"
    }
.end annotation


# static fields
.field private static final onNavigationEvent:Lo/aq;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 2
    invoke-static {}, Lo/aq;->onMessageChannelReady()Lo/aq;

    move-result-object v0

    sput-object v0, Lo/gc;->onNavigationEvent:Lo/aq;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
