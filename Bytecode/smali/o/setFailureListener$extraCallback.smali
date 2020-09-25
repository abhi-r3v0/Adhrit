.class public interface abstract Lo/setFailureListener$extraCallback;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/setFailureListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "extraCallback"
.end annotation


# static fields
.field public static final ICustomTabsCallback$Stub:Lo/setFailureListener$extraCallback;

.field public static final ICustomTabsCallback$Stub$Proxy:Lo/setFailureListener$extraCallback;

.field public static final ICustomTabsService:Lo/setFailureListener$extraCallback;

.field public static final asBinder:Lo/setFailureListener$extraCallback;

.field public static final asInterface:Lo/setFailureListener$extraCallback;

.field public static final getInterfaceDescriptor:Lo/setFailureListener$extraCallback;

.field public static final newSession:Lo/setFailureListener$extraCallback;

.field public static final onRelationshipValidationResult:Lo/setFailureListener$extraCallback;

.field public static final onTransact:Lo/setFailureListener$extraCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    sget-object v0, Lo/setFailureListener$ICustomTabsCallback$Stub$Proxy;->onNavigationEvent:Lo/setFailureListener$extraCallback;

    sput-object v0, Lo/setFailureListener$extraCallback;->onTransact:Lo/setFailureListener$extraCallback;

    .line 41
    sget-object v0, Lo/setFailureListener$ICustomTabsCallback$Stub;->extraCallback:Lo/setFailureListener$extraCallback;

    .line 48
    sget-object v0, Lo/setFailureListener$newSession;->extraCallback:Lo/setFailureListener$extraCallback;

    .line 55
    sget-object v0, Lo/setFailureListener$onRelationshipValidationResult;->extraCallback:Lo/setFailureListener$extraCallback;

    sput-object v0, Lo/setFailureListener$extraCallback;->onRelationshipValidationResult:Lo/setFailureListener$extraCallback;

    .line 62
    sget-object v0, Lo/setFailureListener$asBinder;->extraCallback:Lo/setFailureListener$extraCallback;

    sput-object v0, Lo/setFailureListener$extraCallback;->asInterface:Lo/setFailureListener$extraCallback;

    .line 69
    sget-object v0, Lo/setFailureListener$asInterface;->ICustomTabsCallback:Lo/setFailureListener$extraCallback;

    sput-object v0, Lo/setFailureListener$extraCallback;->asBinder:Lo/setFailureListener$extraCallback;

    .line 72
    sget-object v0, Lo/setFailureListener$onPostMessage;->onMessageChannelReady:Lo/setFailureListener$extraCallback;

    sput-object v0, Lo/setFailureListener$extraCallback;->ICustomTabsCallback$Stub:Lo/setFailureListener$extraCallback;

    .line 79
    sget-object v0, Lo/setFailureListener$onNavigationEvent;->onMessageChannelReady:Lo/setFailureListener$extraCallback;

    sput-object v0, Lo/setFailureListener$extraCallback;->ICustomTabsService:Lo/setFailureListener$extraCallback;

    .line 86
    sget-object v0, Lo/setFailureListener$onMessageChannelReady;->onNavigationEvent:Lo/setFailureListener$extraCallback;

    sput-object v0, Lo/setFailureListener$extraCallback;->ICustomTabsCallback$Stub$Proxy:Lo/setFailureListener$extraCallback;

    .line 96
    sget-object v0, Lo/setFailureListener$getInterfaceDescriptor;->extraCallback:Lo/setFailureListener$extraCallback;

    sput-object v0, Lo/setFailureListener$extraCallback;->getInterfaceDescriptor:Lo/setFailureListener$extraCallback;

    .line 103
    sget-object v0, Lo/setFailureListener$onTransact;->onMessageChannelReady:Lo/setFailureListener$extraCallback;

    sput-object v0, Lo/setFailureListener$extraCallback;->newSession:Lo/setFailureListener$extraCallback;

    return-void
.end method


# virtual methods
.method public abstract ICustomTabsCallback(Landroid/graphics/Matrix;Landroid/graphics/Rect;IIFF)Landroid/graphics/Matrix;
.end method
