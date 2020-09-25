.class final Lo/getVisibility$onPostMessage;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getVisibility;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "onPostMessage"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Model:",
        "Ljava/lang/Object;",
        "Data:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final onMessageChannelReady:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TData;>;"
        }
    .end annotation
.end field

.field final onNavigationEvent:Lo/getCustomView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/getCustomView<",
            "+TModel;+TData;>;"
        }
    .end annotation
.end field

.field final onPostMessage:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TModel;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/Class;Lo/getCustomView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TModel;>;",
            "Ljava/lang/Class<",
            "TData;>;",
            "Lo/getCustomView<",
            "+TModel;+TData;>;)V"
        }
    .end annotation

    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 196
    iput-object p1, p0, Lo/getVisibility$onPostMessage;->onPostMessage:Ljava/lang/Class;

    .line 197
    iput-object p2, p0, Lo/getVisibility$onPostMessage;->onMessageChannelReady:Ljava/lang/Class;

    .line 198
    iput-object p3, p0, Lo/getVisibility$onPostMessage;->onNavigationEvent:Lo/getCustomView;

    return-void
.end method
