.class final synthetic Lo/setGallerySelectionEnabled;
.super Ljava/lang/Object;

# interfaces
.implements Lo/setButtonEnabled;


# static fields
.field static final onMessageChannelReady:Lo/setButtonEnabled;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lo/setGallerySelectionEnabled;

    invoke-direct {v0}, Lo/setGallerySelectionEnabled;-><init>()V

    sput-object v0, Lo/setGallerySelectionEnabled;->onMessageChannelReady:Lo/setButtonEnabled;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPostMessage([B)Ljava/lang/Object;
    .locals 0

    invoke-static {p1}, Lo/onClick$onPostMessage;->ICustomTabsCallback([B)Lo/onClick$onPostMessage;

    move-result-object p1

    return-object p1
.end method
