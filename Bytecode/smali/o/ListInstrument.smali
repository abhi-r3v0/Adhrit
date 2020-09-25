.class public interface abstract Lo/ListInstrument;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/ListInstrument$onMessageChannelReady;
    }
.end annotation


# static fields
.field public static final ICustomTabsCallback:Lo/ListInstrument;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 61
    new-instance v0, Lo/NetBankingInstrument;

    invoke-direct {v0}, Lo/NetBankingInstrument;-><init>()V

    sput-object v0, Lo/ListInstrument;->ICustomTabsCallback:Lo/ListInstrument;

    return-void
.end method


# virtual methods
.method public abstract extraCallback(Lo/Event;Landroid/net/Uri;Lo/p$a;Ljava/util/List;Lo/generateLink;Lo/getWaivers;Ljava/util/Map;Lo/Event$Action;)Lo/ListInstrument$onMessageChannelReady;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/Event;",
            "Landroid/net/Uri;",
            "Lo/p$a;",
            "Ljava/util/List<",
            "Lo/p$a;",
            ">;",
            "Lo/generateLink;",
            "Lo/getWaivers;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Lo/Event$Action;",
            ")",
            "Lo/ListInstrument$onMessageChannelReady;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method
