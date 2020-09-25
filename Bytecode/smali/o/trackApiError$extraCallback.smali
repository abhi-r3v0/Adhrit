.class public final Lo/trackApiError$extraCallback;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/trackApiError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "extraCallback"
.end annotation


# instance fields
.field public final extraCallback:Ljava/lang/String;

.field public final onMessageChannelReady:I

.field public final onPostMessage:[B


# direct methods
.method public constructor <init>(Ljava/lang/String;I[B)V
    .locals 0

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    iput-object p1, p0, Lo/trackApiError$extraCallback;->extraCallback:Ljava/lang/String;

    .line 109
    iput p2, p0, Lo/trackApiError$extraCallback;->onMessageChannelReady:I

    .line 110
    iput-object p3, p0, Lo/trackApiError$extraCallback;->onPostMessage:[B

    return-void
.end method
