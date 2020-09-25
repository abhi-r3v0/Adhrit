.class public abstract Lo/Onboarding$1;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final onMessageChannelReady:Lo/Onboarding$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 47
    new-instance v0, Lo/Onboarding$1$2;

    invoke-direct {v0}, Lo/Onboarding$1$2;-><init>()V

    sput-object v0, Lo/Onboarding$1;->onMessageChannelReady:Lo/Onboarding$1;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static onMessageChannelReady()Lo/Onboarding$1;
    .locals 1

    .line 44
    sget-object v0, Lo/Onboarding$1;->onMessageChannelReady:Lo/Onboarding$1;

    return-object v0
.end method


# virtual methods
.method public abstract onPostMessage()J
.end method
