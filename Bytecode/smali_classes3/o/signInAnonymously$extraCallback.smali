.class public final Lo/signInAnonymously$extraCallback;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/signInAnonymously;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "extraCallback"
.end annotation


# instance fields
.field public ICustomTabsCallback:I

.field public extraCallback:I

.field public onMessageChannelReady:I

.field public onPostMessage:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 0

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    iput p1, p0, Lo/signInAnonymously$extraCallback;->ICustomTabsCallback:I

    .line 115
    iput p2, p0, Lo/signInAnonymously$extraCallback;->extraCallback:I

    .line 116
    iput p3, p0, Lo/signInAnonymously$extraCallback;->onMessageChannelReady:I

    .line 117
    iput p4, p0, Lo/signInAnonymously$extraCallback;->onPostMessage:I

    return-void
.end method

.method public constructor <init>(Lo/signInAnonymously$extraCallback;)V
    .locals 1

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    iget v0, p1, Lo/signInAnonymously$extraCallback;->ICustomTabsCallback:I

    iput v0, p0, Lo/signInAnonymously$extraCallback;->ICustomTabsCallback:I

    .line 122
    iget v0, p1, Lo/signInAnonymously$extraCallback;->extraCallback:I

    iput v0, p0, Lo/signInAnonymously$extraCallback;->extraCallback:I

    .line 123
    iget v0, p1, Lo/signInAnonymously$extraCallback;->onMessageChannelReady:I

    iput v0, p0, Lo/signInAnonymously$extraCallback;->onMessageChannelReady:I

    .line 124
    iget p1, p1, Lo/signInAnonymously$extraCallback;->onPostMessage:I

    iput p1, p0, Lo/signInAnonymously$extraCallback;->onPostMessage:I

    return-void
.end method
