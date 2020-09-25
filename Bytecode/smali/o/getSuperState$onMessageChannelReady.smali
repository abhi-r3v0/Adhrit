.class public final Lo/getSuperState$onMessageChannelReady;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getSuperState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onMessageChannelReady"
.end annotation


# instance fields
.field public final ICustomTabsCallback:Landroid/graphics/Bitmap;

.field public final extraCallback:I

.field public final onMessageChannelReady:Ljava/lang/Exception;

.field public final onNavigationEvent:Landroid/net/Uri;

.field public final onPostMessage:I


# direct methods
.method constructor <init>(Landroid/net/Uri;Landroid/graphics/Bitmap;II)V
    .locals 0

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 160
    iput-object p1, p0, Lo/getSuperState$onMessageChannelReady;->onNavigationEvent:Landroid/net/Uri;

    .line 161
    iput-object p2, p0, Lo/getSuperState$onMessageChannelReady;->ICustomTabsCallback:Landroid/graphics/Bitmap;

    .line 162
    iput p3, p0, Lo/getSuperState$onMessageChannelReady;->onPostMessage:I

    .line 163
    iput p4, p0, Lo/getSuperState$onMessageChannelReady;->extraCallback:I

    const/4 p1, 0x0

    .line 164
    iput-object p1, p0, Lo/getSuperState$onMessageChannelReady;->onMessageChannelReady:Ljava/lang/Exception;

    return-void
.end method

.method constructor <init>(Landroid/net/Uri;Ljava/lang/Exception;)V
    .locals 0

    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 168
    iput-object p1, p0, Lo/getSuperState$onMessageChannelReady;->onNavigationEvent:Landroid/net/Uri;

    const/4 p1, 0x0

    .line 169
    iput-object p1, p0, Lo/getSuperState$onMessageChannelReady;->ICustomTabsCallback:Landroid/graphics/Bitmap;

    const/4 p1, 0x0

    .line 170
    iput p1, p0, Lo/getSuperState$onMessageChannelReady;->onPostMessage:I

    .line 171
    iput p1, p0, Lo/getSuperState$onMessageChannelReady;->extraCallback:I

    .line 172
    iput-object p2, p0, Lo/getSuperState$onMessageChannelReady;->onMessageChannelReady:Ljava/lang/Exception;

    return-void
.end method
