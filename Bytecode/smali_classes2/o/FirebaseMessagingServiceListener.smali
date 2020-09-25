.class public final enum Lo/FirebaseMessagingServiceListener;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lo/FirebaseMessagingServiceListener;",
        ">;"
    }
.end annotation


# static fields
.field private static enum ICustomTabsCallback:Lo/FirebaseMessagingServiceListener;

.field private static final ICustomTabsCallback$Stub:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lo/FirebaseMessagingServiceListener;",
            ">;"
        }
    .end annotation
.end field

.field private static enum asBinder:Lo/FirebaseMessagingServiceListener;

.field private static enum extraCallback:Lo/FirebaseMessagingServiceListener;

.field private static enum onMessageChannelReady:Lo/FirebaseMessagingServiceListener;

.field public static final enum onNavigationEvent:Lo/FirebaseMessagingServiceListener;

.field private static enum onPostMessage:Lo/FirebaseMessagingServiceListener;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 1
    new-instance v0, Lo/FirebaseMessagingServiceListener;

    const/4 v1, 0x0

    const-string v2, "DEFAULT"

    invoke-direct {v0, v2, v1}, Lo/FirebaseMessagingServiceListener;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/FirebaseMessagingServiceListener;->onNavigationEvent:Lo/FirebaseMessagingServiceListener;

    .line 2
    new-instance v0, Lo/FirebaseMessagingServiceListener;

    const/4 v2, 0x1

    const-string v3, "UNMETERED_ONLY"

    invoke-direct {v0, v3, v2}, Lo/FirebaseMessagingServiceListener;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/FirebaseMessagingServiceListener;->onMessageChannelReady:Lo/FirebaseMessagingServiceListener;

    .line 3
    new-instance v0, Lo/FirebaseMessagingServiceListener;

    const/4 v3, 0x2

    const-string v4, "UNMETERED_OR_DAILY"

    invoke-direct {v0, v4, v3}, Lo/FirebaseMessagingServiceListener;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/FirebaseMessagingServiceListener;->onPostMessage:Lo/FirebaseMessagingServiceListener;

    .line 4
    new-instance v0, Lo/FirebaseMessagingServiceListener;

    const/4 v4, 0x3

    const-string v5, "FAST_IF_RADIO_AWAKE"

    invoke-direct {v0, v5, v4}, Lo/FirebaseMessagingServiceListener;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/FirebaseMessagingServiceListener;->extraCallback:Lo/FirebaseMessagingServiceListener;

    .line 5
    new-instance v0, Lo/FirebaseMessagingServiceListener;

    const/4 v5, 0x4

    const-string v6, "NEVER"

    invoke-direct {v0, v6, v5}, Lo/FirebaseMessagingServiceListener;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/FirebaseMessagingServiceListener;->ICustomTabsCallback:Lo/FirebaseMessagingServiceListener;

    .line 6
    new-instance v0, Lo/FirebaseMessagingServiceListener;

    const-string v6, "UNRECOGNIZED"

    const/4 v7, 0x5

    invoke-direct {v0, v6, v7}, Lo/FirebaseMessagingServiceListener;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/FirebaseMessagingServiceListener;->asBinder:Lo/FirebaseMessagingServiceListener;

    .line 8
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 9
    sput-object v0, Lo/FirebaseMessagingServiceListener;->ICustomTabsCallback$Stub:Landroid/util/SparseArray;

    sget-object v6, Lo/FirebaseMessagingServiceListener;->onNavigationEvent:Lo/FirebaseMessagingServiceListener;

    invoke-virtual {v0, v1, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 10
    sget-object v0, Lo/FirebaseMessagingServiceListener;->ICustomTabsCallback$Stub:Landroid/util/SparseArray;

    sget-object v1, Lo/FirebaseMessagingServiceListener;->onMessageChannelReady:Lo/FirebaseMessagingServiceListener;

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 11
    sget-object v0, Lo/FirebaseMessagingServiceListener;->ICustomTabsCallback$Stub:Landroid/util/SparseArray;

    sget-object v1, Lo/FirebaseMessagingServiceListener;->onPostMessage:Lo/FirebaseMessagingServiceListener;

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 12
    sget-object v0, Lo/FirebaseMessagingServiceListener;->ICustomTabsCallback$Stub:Landroid/util/SparseArray;

    sget-object v1, Lo/FirebaseMessagingServiceListener;->extraCallback:Lo/FirebaseMessagingServiceListener;

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 13
    sget-object v0, Lo/FirebaseMessagingServiceListener;->ICustomTabsCallback$Stub:Landroid/util/SparseArray;

    sget-object v1, Lo/FirebaseMessagingServiceListener;->ICustomTabsCallback:Lo/FirebaseMessagingServiceListener;

    invoke-virtual {v0, v5, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 14
    sget-object v0, Lo/FirebaseMessagingServiceListener;->ICustomTabsCallback$Stub:Landroid/util/SparseArray;

    sget-object v1, Lo/FirebaseMessagingServiceListener;->asBinder:Lo/FirebaseMessagingServiceListener;

    const/4 v2, -0x1

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method
