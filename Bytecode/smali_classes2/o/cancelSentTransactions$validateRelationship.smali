.class final Lo/cancelSentTransactions$validateRelationship;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/cancelSentTransactions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "validateRelationship"
.end annotation


# instance fields
.field ICustomTabsCallback:Z

.field extraCallback:Z

.field final onMessageChannelReady:I

.field onPostMessage:Lo/colorFlip;


# direct methods
.method constructor <init>(I)V
    .locals 0

    .line 1178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1179
    iput p1, p0, Lo/cancelSentTransactions$validateRelationship;->onMessageChannelReady:I

    return-void
.end method
