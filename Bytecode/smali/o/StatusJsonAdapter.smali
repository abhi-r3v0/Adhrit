.class public interface abstract Lo/StatusJsonAdapter;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final onMessageChannelReady:Lo/StatusJsonAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 72
    new-instance v0, Lo/StatusJsonAdapter$1;

    invoke-direct {v0}, Lo/StatusJsonAdapter$1;-><init>()V

    sput-object v0, Lo/StatusJsonAdapter;->onMessageChannelReady:Lo/StatusJsonAdapter;

    return-void
.end method


# virtual methods
.method public abstract onMessageChannelReady(Lo/p$a;)Z
.end method

.method public abstract onNavigationEvent(Lo/p$a;)Lo/SurchargeDetails;
.end method
