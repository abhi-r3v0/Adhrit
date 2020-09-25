.class public final Lo/Account$onMessageChannelReady;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/Account;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onMessageChannelReady"
.end annotation


# instance fields
.field public final ICustomTabsCallback:J

.field public final ICustomTabsCallback$Stub:J

.field public final extraCallback:Lo/PaymentRequestJsonAdapter;

.field public final onMessageChannelReady:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public final onNavigationEvent:J

.field public final onPostMessage:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Lo/PaymentRequestJsonAdapter;Landroid/net/Uri;Ljava/util/Map;JJJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/PaymentRequestJsonAdapter;",
            "Landroid/net/Uri;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;JJJ)V"
        }
    .end annotation

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-object p1, p0, Lo/Account$onMessageChannelReady;->extraCallback:Lo/PaymentRequestJsonAdapter;

    .line 82
    iput-object p2, p0, Lo/Account$onMessageChannelReady;->onPostMessage:Landroid/net/Uri;

    .line 83
    iput-object p3, p0, Lo/Account$onMessageChannelReady;->onMessageChannelReady:Ljava/util/Map;

    .line 84
    iput-wide p4, p0, Lo/Account$onMessageChannelReady;->onNavigationEvent:J

    .line 85
    iput-wide p6, p0, Lo/Account$onMessageChannelReady;->ICustomTabsCallback:J

    .line 86
    iput-wide p8, p0, Lo/Account$onMessageChannelReady;->ICustomTabsCallback$Stub:J

    return-void
.end method
