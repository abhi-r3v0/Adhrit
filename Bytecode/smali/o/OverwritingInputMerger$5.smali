.class public final Lo/OverwritingInputMerger$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setPivotX;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/OverwritingInputMerger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/setPivotX<",
        "Lo/WorkDatabase<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field private synthetic onPostMessage:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lo/OverwritingInputMerger$5;->onPostMessage:Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady()Ljava/lang/Object;
    .locals 2

    .line 1036
    iget-object v0, p0, Lo/OverwritingInputMerger$5;->onPostMessage:Ljava/lang/Throwable;

    .line 3020
    new-instance v1, Lo/AggregateException;

    invoke-direct {v1}, Lo/AggregateException;-><init>()V

    .line 2022
    invoke-virtual {v1, v0}, Lo/AggregateException;->onNavigationEvent(Ljava/lang/Throwable;)Z

    return-object v1
.end method
