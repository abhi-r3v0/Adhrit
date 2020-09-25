.class public abstract Lo/setPersistenceEnabled$onMessageChannelReady;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/setPersistenceEnabled;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "onMessageChannelReady"
.end annotation


# static fields
.field public static final onPostMessage:Lo/setPersistenceEnabled$onMessageChannelReady;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 916
    new-instance v0, Lo/setPersistenceEnabled$onMessageChannelReady$1;

    invoke-direct {v0}, Lo/setPersistenceEnabled$onMessageChannelReady$1;-><init>()V

    sput-object v0, Lo/setPersistenceEnabled$onMessageChannelReady;->onPostMessage:Lo/setPersistenceEnabled$onMessageChannelReady;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 915
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract onNavigationEvent(Lo/purgeOutstandingWrites;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
