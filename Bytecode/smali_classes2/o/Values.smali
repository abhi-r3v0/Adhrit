.class public final Lo/Values;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lo/AssetsResponse;
.end annotation


# instance fields
.field private final onNavigationEvent:Ljava/lang/Object;

.field private onPostMessage:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lo/Values;->onNavigationEvent:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/Values;->onPostMessage:Z

    return-void
.end method
