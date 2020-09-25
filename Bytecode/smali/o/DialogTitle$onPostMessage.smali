.class public final Lo/DialogTitle$onPostMessage;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/getCustomView;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/DialogTitle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "onPostMessage"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Model:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lo/getCustomView<",
        "TModel;TModel;>;"
    }
.end annotation


# static fields
.field private static final onPostMessage:Lo/DialogTitle$onPostMessage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/DialogTitle$onPostMessage<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 91
    new-instance v0, Lo/DialogTitle$onPostMessage;

    invoke-direct {v0}, Lo/DialogTitle$onPostMessage;-><init>()V

    sput-object v0, Lo/DialogTitle$onPostMessage;->onPostMessage:Lo/DialogTitle$onPostMessage;

    return-void
.end method

.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static extraCallback()Lo/DialogTitle$onPostMessage;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lo/DialogTitle$onPostMessage<",
            "TT;>;"
        }
    .end annotation

    .line 95
    sget-object v0, Lo/DialogTitle$onPostMessage;->onPostMessage:Lo/DialogTitle$onPostMessage;

    return-object v0
.end method


# virtual methods
.method public final extraCallback(Lo/getVisibility;)Lo/setNavigationContentDescription;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/getVisibility;",
            ")",
            "Lo/setNavigationContentDescription<",
            "TModel;TModel;>;"
        }
    .end annotation

    .line 109
    invoke-static {}, Lo/DialogTitle;->onMessageChannelReady()Lo/DialogTitle;

    move-result-object p1

    return-object p1
.end method
