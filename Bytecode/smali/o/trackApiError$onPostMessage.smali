.class public final Lo/trackApiError$onPostMessage;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/trackApiError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onPostMessage"
.end annotation


# instance fields
.field public final ICustomTabsCallback:I

.field public final extraCallback:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/trackApiError$extraCallback;",
            ">;"
        }
    .end annotation
.end field

.field public final onMessageChannelReady:[B

.field public final onNavigationEvent:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/util/List;[B)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lo/trackApiError$extraCallback;",
            ">;[B)V"
        }
    .end annotation

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput p1, p0, Lo/trackApiError$onPostMessage;->ICustomTabsCallback:I

    .line 83
    iput-object p2, p0, Lo/trackApiError$onPostMessage;->onNavigationEvent:Ljava/lang/String;

    if-nez p3, :cond_0

    .line 86
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    goto :goto_0

    .line 87
    :cond_0
    invoke-static {p3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lo/trackApiError$onPostMessage;->extraCallback:Ljava/util/List;

    .line 88
    iput-object p4, p0, Lo/trackApiError$onPostMessage;->onMessageChannelReady:[B

    return-void
.end method
