.class public final Lo/setHideReplaced$onPostMessage;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/AppsFlyerProperties$EmailsCryptType;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/setHideReplaced;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onPostMessage"
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0005"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/cm/credprotect/adapter/CredProtectPitchAdapter$Companion;",
        "",
        "()V",
        "ITEM_DESCRIPTION",
        "",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private final ICustomTabsCallback:Lo/isLat;

.field private final onMessageChannelReady:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lo/isEnableLog;",
            ">;"
        }
    .end annotation
.end field

.field private final onPostMessage:Lo/OaidClient$Info;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/util/Set;Lo/OaidClient$Info;Lo/isLat;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lo/isEnableLog;",
            ">;",
            "Lo/OaidClient$Info;",
            "Lo/isLat;",
            ")V"
        }
    .end annotation

    .line 1031
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1032
    iput-object p1, p0, Lo/setHideReplaced$onPostMessage;->onMessageChannelReady:Ljava/util/Set;

    .line 1033
    iput-object p2, p0, Lo/setHideReplaced$onPostMessage;->onPostMessage:Lo/OaidClient$Info;

    .line 1034
    iput-object p3, p0, Lo/setHideReplaced$onPostMessage;->ICustomTabsCallback:Lo/isLat;

    return-void
.end method


# virtual methods
.method public final getTransport(Ljava/lang/String;Ljava/lang/Class;Lo/isEnableLog;Lo/getReferrer;)Lo/loadProperties;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lo/isEnableLog;",
            "Lo/getReferrer<",
            "TT;[B>;)",
            "Lo/loadProperties<",
            "TT;>;"
        }
    .end annotation

    .line 1049
    iget-object p2, p0, Lo/setHideReplaced$onPostMessage;->onMessageChannelReady:Ljava/util/Set;

    invoke-interface {p2, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 1055
    new-instance p2, Lo/fetch;

    iget-object v1, p0, Lo/setHideReplaced$onPostMessage;->onPostMessage:Lo/OaidClient$Info;

    iget-object v5, p0, Lo/setHideReplaced$onPostMessage;->ICustomTabsCallback:Lo/isLat;

    move-object v0, p2

    move-object v2, p1

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lo/fetch;-><init>(Lo/OaidClient$Info;Ljava/lang/String;Lo/isEnableLog;Lo/getReferrer;Lo/isLat;)V

    return-object p2

    .line 1050
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/Object;

    const/4 p4, 0x0

    aput-object p3, p2, p4

    const/4 p3, 0x1

    iget-object p4, p0, Lo/setHideReplaced$onPostMessage;->onMessageChannelReady:Ljava/util/Set;

    aput-object p4, p2, p3

    const-string p3, "%s is not supported byt this factory. Supported encodings are: %s."

    .line 1051
    invoke-static {p3, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
