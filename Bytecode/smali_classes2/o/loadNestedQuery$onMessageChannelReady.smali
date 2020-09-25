.class public final Lo/loadNestedQuery$onMessageChannelReady;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/loadNestedQuery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onMessageChannelReady"
.end annotation


# instance fields
.field public final ICustomTabsCallback:Lo/partKey;

.field final onPostMessage:Z


# direct methods
.method constructor <init>(Lo/partKey;Z)V
    .locals 0

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 149
    check-cast p1, Lo/partKey;

    iput-object p1, p0, Lo/loadNestedQuery$onMessageChannelReady;->ICustomTabsCallback:Lo/partKey;

    .line 150
    iput-boolean p2, p0, Lo/loadNestedQuery$onMessageChannelReady;->onPostMessage:Z

    return-void

    .line 1910
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "decompressor"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
