.class public final Lo/generateEventsForChanges$onMessageChannelReady;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/generateEventsForChanges;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onMessageChannelReady"
.end annotation


# instance fields
.field final onMessageChannelReady:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/changeWithPrevName;",
            ">;"
        }
    .end annotation
.end field

.field onNavigationEvent:I


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/changeWithPrevName;",
            ">;)V"
        }
    .end annotation

    .line 222
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 220
    iput v0, p0, Lo/generateEventsForChanges$onMessageChannelReady;->onNavigationEvent:I

    .line 223
    iput-object p1, p0, Lo/generateEventsForChanges$onMessageChannelReady;->onMessageChannelReady:Ljava/util/List;

    return-void
.end method
