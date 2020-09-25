.class final Lo/getSoftInputMode$extraCallback;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getSoftInputMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "extraCallback"
.end annotation


# instance fields
.field final ICustomTabsCallback:I

.field final extraCallback:I

.field final onPostMessage:[B


# direct methods
.method constructor <init>([BII)V
    .locals 0

    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 172
    iput-object p1, p0, Lo/getSoftInputMode$extraCallback;->onPostMessage:[B

    .line 173
    iput p2, p0, Lo/getSoftInputMode$extraCallback;->extraCallback:I

    .line 174
    iput p3, p0, Lo/getSoftInputMode$extraCallback;->ICustomTabsCallback:I

    return-void
.end method
