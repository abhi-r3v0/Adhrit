.class public final Lo/getNavigationMode$onMessageChannelReady;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/getCustomView;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getNavigationMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onMessageChannelReady"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Model:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lo/getCustomView<",
        "TModel;",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# instance fields
.field private final extraCallback:Lo/getNavigationMode$onPostMessage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/getNavigationMode$onPostMessage<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    new-instance v0, Lo/getNavigationMode$onMessageChannelReady$5;

    invoke-direct {v0}, Lo/getNavigationMode$onMessageChannelReady$5;-><init>()V

    iput-object v0, p0, Lo/getNavigationMode$onMessageChannelReady;->extraCallback:Lo/getNavigationMode$onPostMessage;

    return-void
.end method


# virtual methods
.method public final extraCallback(Lo/getVisibility;)Lo/setNavigationContentDescription;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/getVisibility;",
            ")",
            "Lo/setNavigationContentDescription<",
            "TModel;",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .line 165
    new-instance p1, Lo/getNavigationMode;

    iget-object v0, p0, Lo/getNavigationMode$onMessageChannelReady;->extraCallback:Lo/getNavigationMode$onPostMessage;

    invoke-direct {p1, v0}, Lo/getNavigationMode;-><init>(Lo/getNavigationMode$onPostMessage;)V

    return-object p1
.end method
