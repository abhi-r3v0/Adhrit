.class public Lo/getInputType;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/getInputType$onMessageChannelReady;
    }
.end annotation


# static fields
.field private static final ICustomTabsCallback:Ljava/lang/String;


# instance fields
.field private onMessageChannelReady:Lo/requestFocus;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 10
    const-class v0, Lo/getInputType;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lo/getInputType;->ICustomTabsCallback:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lo/getInputType$onMessageChannelReady;)V
    .locals 1

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iget-object p1, p1, Lo/getInputType$onMessageChannelReady;->ICustomTabsCallback:Lo/requestFocus;

    iput-object p1, p0, Lo/getInputType;->onMessageChannelReady:Lo/requestFocus;

    if-nez p1, :cond_0

    .line 66
    sget-object p1, Lo/getInputType;->ICustomTabsCallback:Ljava/lang/String;

    const-string v0, "DecodeHelper:Constructor:bansheeCodec is NULL!!!"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
